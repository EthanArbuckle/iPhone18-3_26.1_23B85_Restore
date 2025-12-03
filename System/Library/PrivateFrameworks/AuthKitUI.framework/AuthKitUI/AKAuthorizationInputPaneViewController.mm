@interface AKAuthorizationInputPaneViewController
- (AKAuthorizationInputPaneViewController)init;
- (AKAuthorizationInputPaneViewController)initWithPresentationContext:(id)context scopeChoices:(id)choices;
- (AKAuthorizationViewController)authorizationViewController;
- (BOOL)_emailScopeAllowsAuthorization;
- (BOOL)_getValidEditingGivenName:(id *)name familyName:(id *)familyName;
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
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (BOOL)validateReadyForAuthorization;
- (double)_computeNameEditHeightChange;
- (double)_mainSectionScreenMaxY;
- (double)_padNameEditHeightChange;
- (double)_phoneNameEditHeightChange;
- (double)contentScrollOffset;
- (double)intrinsicContentHeight;
- (id)_cellForScope:(id)scope localRow:(int64_t)row;
- (id)_clearButton;
- (id)_defaultSharedEmail;
- (id)_doneBarButtonItem;
- (id)_editingNameCellForRow:(unint64_t)row;
- (id)_emailCellForLocalRow:(int64_t)row;
- (id)_firstLoginChoice;
- (id)_hideMyEmailCell;
- (id)_localizedAuthorizationPrefix:(BOOL)prefix;
- (id)_localizedAuthorizationString;
- (id)_localizedChoiceString;
- (id)_localizedEmailKey;
- (id)_localizedFirstPartyAuthorizationStringWithAppName:(id)name accountName:(id)accountName;
- (id)_localizedInfoString;
- (id)_localizedNameKey;
- (id)_localizedPrivacyMessageStringForManagedAppleID;
- (id)_localizedSharedAccountsChoiceString;
- (id)_localizedSubscriptionString;
- (id)_localizedUpgradeString;
- (id)_loginChoiceCellForRow:(unint64_t)row;
- (id)_loginChoiceTableViewCellForRow:(unint64_t)row;
- (id)_nameCell;
- (id)_nameCellDetailLabelTextForManagedAppleID;
- (id)_paneTitleString;
- (id)_selectedLoginChoice;
- (id)_shareMyEmailCell;
- (id)_singleEmailCellForIndex:(int64_t)index;
- (id)_textFieldForRow:(unint64_t)row;
- (id)_textFromTextField:(id)field;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_numberOfRowsInValidatedScopes;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_numberOfRowsInScope:(id)scope;
- (void)_addAdditionalCTAToContext:(id)context;
- (void)_addAuthorizationButtonToPaneContext:(id)context;
- (void)_addShimToStackView:(id)view;
- (void)_addUseOtherIDButtonToContext:(id)context;
- (void)_beginEditingRow:(unint64_t)row;
- (void)_createAppIconViewWithIcon:(id)icon;
- (void)_didSelectEditScope:(id)scope options:(id)options;
- (void)_doneButtonSelected:(id)selected;
- (void)_enableOrDisableConfirmButton;
- (void)_escapeKeyPressed;
- (void)_handleAuthorizationError:(id)error;
- (void)_loadAppIconViewImage;
- (void)_nameEditDone;
- (void)_paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:(id)authorization error:(id)error;
- (void)_paneDelegate_didRequestAuthorizationWithUserProvidedInformation:(id)information completion:(id)completion;
- (void)_performAdditionalCTA:(id)a;
- (void)_performAuthorizationWithRawPassword:(id)password;
- (void)_performAuthorizationWithRawPassword:(id)password completionHandler:(id)handler;
- (void)_performPasswordAuthentication;
- (void)_prepareScopeChoices:(id)choices withLoginChoice:(id)choice;
- (void)_reloadDataAnimated:(BOOL)animated heightChange:(id)change;
- (void)_reloadDataAnimated:(BOOL)animated heightChange:(id)change animation:(id)animation;
- (void)_reloadDataAnimated:(BOOL)animated heightChange:(id)change animation:(id)animation completion:(id)completion;
- (void)_selectEmailLocalRow:(int64_t)row;
- (void)_selectHideMyEmail;
- (void)_selectLoginChoiceCell;
- (void)_selectLoginChoiceCell:(id)cell;
- (void)_selectRow:(int64_t)row;
- (void)_selectScope:(id)scope localRow:(int64_t)row;
- (void)_selectShareMyEmail;
- (void)_selectSingleEmailAtIndex:(int64_t)index;
- (void)_setCancelButtonEnabled:(BOOL)enabled;
- (void)_setEditableScopeChoicesForManagedAppleID;
- (void)_setFamilyNameFromTextField:(id)field;
- (void)_setGivenNameFromTextField:(id)field;
- (void)_setupAlternateButton;
- (void)_setupAnalyticsReport;
- (void)_setupAppIconView;
- (void)_setupEditableScopeChoices;
- (void)_setupEscapeKeyListener;
- (void)_setupFamilyNameCell:(id)cell;
- (void)_setupGivenNameCell:(id)cell;
- (void)_setupInfoLabel;
- (void)_setupLoginChoiceView;
- (void)_setupPrivacyLink;
- (void)_setupTableView;
- (void)_setupUpgradeFromPasswordBulletPointViews;
- (void)_setupValidatedScopes;
- (void)_transitionFromEditingNameAnimated:(BOOL)animated;
- (void)_transitionToEditingNameAnimated:(BOOL)animated;
- (void)_updateAnalyticsReport;
- (void)_updateDataSourceWithValidEditingName;
- (void)_updateEditableScopeChoicesWithPrivateEmail:(BOOL)email;
- (void)_updateInfoLabelStringWithAppName:(id)name;
- (void)_updateLayoutForHeightChange:(double)change;
- (void)_updatePaneTitleForEditing:(BOOL)editing;
- (void)_useOtherIDButtonSelected:(id)selected;
- (void)_userCanceledPanel;
- (void)dealloc;
- (void)passwordAuthenticationCompletedWithResults:(id)results error:(id)error;
- (void)performPasswordAuthentication;
- (void)setEditingName:(BOOL)name shouldClear:(BOOL)clear animated:(BOOL)animated;
- (void)setEmailExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)subPaneConfirmButtonDidEnterProcessingState:(id)state;
- (void)subPaneConfirmButtonPerformAccountCreation:(id)creation;
- (void)subPaneConfirmButtonPerformExternalAuthentication:(id)authentication;
- (void)subpaneConfirmButtonDidFailBiometry:(id)biometry;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AKAuthorizationInputPaneViewController

- (AKAuthorizationInputPaneViewController)init
{
  selfCopy = self;
  [(AKAuthorizationInputPaneViewController *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationInputPaneViewController)initWithPresentationContext:(id)context scopeChoices:(id)choices
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v9 = 0;
  objc_storeStrong(&v9, choices);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKAuthorizationInputPaneViewController;
  selfCopy = [(AKAuthorizationPaneViewController *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_presentationContext, location[0]);
    objc_storeStrong(&selfCopy->_editableScopeChoices, v9);
    [(AKAuthorizationInputPaneViewController *)selfCopy _setupAnalyticsReport];
    [(AKAuthorizationInputPaneViewController *)selfCopy _setupValidatedScopes];
    [(AKAuthorizationInputPaneViewController *)selfCopy _setupEditableScopeChoices];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AKCAReporter *)self->_analyticsReport sendReport];
  v2.receiver = selfCopy;
  v2.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationInputPaneViewController *)&v2 dealloc];
}

- (void)_setupEditableScopeChoices
{
  selfCopy = self;
  v20 = a2;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  isManagedAppleID = [userInformation isManagedAppleID];
  MEMORY[0x277D82BD8](userInformation);
  v19 = isManagedAppleID;
  userInformation2 = [(AKAuthorizationScopeChoices *)selfCopy->_editableScopeChoices userInformation];
  reachableEmails = [(AKUserInformation *)userInformation2 reachableEmails];
  userInformation3 = [(AKAuthorizationScopeChoices *)selfCopy->_editableScopeChoices userInformation];
  location = [(AKUserInformation *)userInformation3 previouslySelectedEmail];
  *&v2 = MEMORY[0x277D82BD8](userInformation3).n128_u64[0];
  if (isManagedAppleID)
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _setEditableScopeChoicesForManagedAppleID];
  }

  else
  {
    v15 = 0;
    isTiburonU13Enabled = 0;
    if ([(AKAuthorizationInputPaneViewController *)selfCopy _isUnderageUser])
    {
      mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
      v15 = 1;
      isTiburonU13Enabled = [mEMORY[0x277CF0228] isTiburonU13Enabled];
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
    }

    if (isTiburonU13Enabled)
    {
      [(AKAuthorizationInputPaneViewController *)selfCopy _setEditableScopeChoicesForUnderageUser];
    }

    else
    {
      -[AKAuthorizationScopeChoices setIndexOfChosenEmail:](selfCopy->_editableScopeChoices, "setIndexOfChosenEmail:", [reachableEmails indexOfObject:location]);
      editableScopeChoices = selfCopy->_editableScopeChoices;
      userInformation4 = [(AKAuthorizationScopeChoices *)editableScopeChoices userInformation];
      previouslyWantedPrivateEmail = [(AKUserInformation *)userInformation4 previouslyWantedPrivateEmail];
      -[AKAuthorizationScopeChoices setWantsPrivateEmail:](editableScopeChoices, "setWantsPrivateEmail:", [previouslyWantedPrivateEmail BOOLValue]);
      MEMORY[0x277D82BD8](previouslyWantedPrivateEmail);
      MEMORY[0x277D82BD8](userInformation4);
    }
  }

  loginChoices = [(AKAuthorizationPresentationContext *)selfCopy->_presentationContext loginChoices];
  v5 = [loginChoices count];
  *&v3 = MEMORY[0x277D82BD8](loginChoices).n128_u64[0];
  if (v5)
  {
    [(AKAuthorizationScopeChoices *)selfCopy->_editableScopeChoices setIndexOfChosenLogin:0, v3];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&reachableEmails, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v54 = a2;
  v53.receiver = self;
  v53.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationPaneViewController *)&v53 viewDidLoad];
  v46 = +[AKAuthorizationAppearance paneBackgroundColor];
  view = [(AKAuthorizationInputPaneViewController *)selfCopy view];
  [view setBackgroundColor:v46];
  MEMORY[0x277D82BD8](view);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled)
  {
    headerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
    stackView = [(AKAuthorizationPaneContext *)headerPaneContext stackView];
    [(UIStackView *)stackView setAxis:0];
    MEMORY[0x277D82BD8](stackView);
    MEMORY[0x277D82BD8](headerPaneContext);
    NSDirectionalEdgeInsetsMake_0();
    v49 = v3;
    v50 = v4;
    v51 = v5;
    v52 = v6;
    headerPaneContext2 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
    stackView2 = [(AKAuthorizationPaneContext *)headerPaneContext2 stackView];
    [(UIStackView *)stackView2 setDirectionalLayoutMargins:v49, v50, v51, v52];
    MEMORY[0x277D82BD8](stackView2);
    *&v7 = MEMORY[0x277D82BD8](headerPaneContext2).n128_u64[0];
    headerPaneContext3 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
    stackView3 = [(AKAuthorizationPaneContext *)headerPaneContext3 stackView];
    [(UIStackView *)stackView3 setLayoutMarginsRelativeArrangement:1];
    MEMORY[0x277D82BD8](stackView3);
    v2 = MEMORY[0x277D82BD8](headerPaneContext3).n128_u64[0];
  }

  [(AKAuthorizationInputPaneViewController *)selfCopy _setupTableView];
  mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled2 = [mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled];
  v8 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
  if (!isAuthKitSolariumFeatureEnabled2)
  {
    v35 = selfCopy;
    paneHeaderStackView = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
    [(AKAuthorizationInputPaneViewController *)v35 _addShimToStackView:?];
    v8 = MEMORY[0x277D82BD8](paneHeaderStackView).n128_u64[0];
  }

  [(AKAuthorizationInputPaneViewController *)selfCopy _setupAppIconView];
  [(AKAuthorizationInputPaneViewController *)selfCopy _setupInfoLabel];
  [(AKAuthorizationInputPaneViewController *)selfCopy _setupLoginChoiceView];
  mEMORY[0x277CF0228]3 = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled3 = [mEMORY[0x277CF0228]3 isAuthKitSolariumFeatureEnabled];
  v9 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]3).n128_u64[0];
  if (!isAuthKitSolariumFeatureEnabled3)
  {
    v31 = selfCopy;
    paneHeaderStackView2 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
    [(AKAuthorizationInputPaneViewController *)v31 _addShimToStackView:?];
    v9 = MEMORY[0x277D82BD8](paneHeaderStackView2).n128_u64[0];
  }

  [(AKAuthorizationInputPaneViewController *)selfCopy _setupNameAndEmailScopeViews];
  [(AKAuthorizationInputPaneViewController *)selfCopy _setupPrivacyLink];
  mEMORY[0x277CF0228]4 = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled4 = [mEMORY[0x277CF0228]4 isAuthKitSolariumFeatureEnabled];
  v10 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]4).n128_u64[0];
  if (!isAuthKitSolariumFeatureEnabled4)
  {
    v27 = selfCopy;
    paneFooterStackView = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
    [(AKAuthorizationInputPaneViewController *)v27 _addShimToStackView:?];
    v10 = MEMORY[0x277D82BD8](paneFooterStackView).n128_u64[0];
  }

  v17 = selfCopy;
  footerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy footerPaneContext];
  [(AKAuthorizationInputPaneViewController *)v17 _addAuthorizationButtonToPaneContext:?];
  *&v11 = MEMORY[0x277D82BD8](footerPaneContext).n128_u64[0];
  v19 = selfCopy;
  footerPaneContext2 = [(AKAuthorizationPaneViewController *)selfCopy footerPaneContext];
  [(AKAuthorizationInputPaneViewController *)v19 _addAdditionalCTAToContext:?];
  *&v12 = MEMORY[0x277D82BD8](footerPaneContext2).n128_u64[0];
  [(AKAuthorizationInputPaneViewController *)selfCopy _setupAlternateButton];
  v21 = selfCopy;
  paneFooterStackView2 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
  [(AKAuthorizationInputPaneViewController *)v21 _addShimToStackView:?];
  *&v13 = MEMORY[0x277D82BD8](paneFooterStackView2).n128_u64[0];
  [(AKAuthorizationInputPaneViewController *)selfCopy _updatePaneTitleForEditing:0, v13];
  [(AKAuthorizationInputPaneViewController *)selfCopy _setupEscapeKeyListener];
  v23 = MEMORY[0x277CCAAD0];
  mutableConstraints = [(AKAuthorizationPaneViewController *)selfCopy mutableConstraints];
  [v23 activateConstraints:?];
  mEMORY[0x277CF0228]5 = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled5 = [mEMORY[0x277CF0228]5 isAuthKitSolariumFeatureEnabled];
  *&v14 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]5).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled5)
  {
    paneFooterStackView3 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
    tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    [(UIStackView *)paneFooterStackView3 ak_addMagicPocketToScrollView:?];
    MEMORY[0x277D82BD8](tableView);
    MEMORY[0x277D82BD8](paneFooterStackView3);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationPaneViewController *)&v5 viewWillAppear:appear];
  if ([(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoicesChanged])
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy setEditableScopeChoicesChanged:0];
    tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    [(UITableView *)tableView reloadData];
    MEMORY[0x277D82BD8](tableView);
  }

  [(AKAuthorizationInputPaneViewController *)selfCopy _enableOrDisableConfirmButton];
  if (([(AKAuthorizationInputPaneViewController *)selfCopy isViewLoaded]& 1) != 0 && ![(AKAuthorizationInputPaneViewController *)selfCopy isBeingDismissed])
  {
    v4 = *MEMORY[0x277CBF3A8];
    [(AKAuthorizationInputPaneViewController *)selfCopy setPreferredContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    [(AKAuthorizationPaneViewController *)selfCopy sizeToFitPaneContent];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationPaneViewController *)&v3 viewDidAppear:appear];
  if ([(AKAuthorizationInputPaneViewController *)selfCopy isEditingName])
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _beginEditing];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  v3.receiver = self;
  v3.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationInputPaneViewController *)&v3 viewWillDisappear:disappear];
  [(AKAuthorizationInputPaneViewController *)selfCopy _updateDataSourceWithValidEditingName];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v9 = a2;
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationInputPaneViewController *)&v7 viewDidDisappear:disappear];
  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  isFaceIDCapable = [currentDevice isFaceIDCapable];
  *&v3 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  if (isFaceIDCapable)
  {
    confirmButton = [(AKAuthorizationInputPaneViewController *)selfCopy confirmButton];
    [(AKAuthorizationSubPaneConfirmButton *)confirmButton enableAuthorizationCapability:0];
    MEMORY[0x277D82BD8](confirmButton);
  }
}

- (void)_setupAnalyticsReport
{
  selfCopy = self;
  location[1] = a2;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  requestIdentifier = [credentialRequestContext requestIdentifier];
  location[0] = [requestIdentifier UUIDString];
  MEMORY[0x277D82BD8](requestIdentifier);
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  v2 = [[AKCATiburonInputUIReporter alloc] initWithRequestID:location[0]];
  analyticsReport = selfCopy->_analyticsReport;
  selfCopy->_analyticsReport = v2;
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
  presentationContext2 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  loginChoices = [(AKAuthorizationPresentationContext *)presentationContext2 loginChoices];
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __63__AKAuthorizationInputPaneViewController__setupAnalyticsReport__block_invoke;
  v14 = &unk_2784A6F88;
  v15 = &v22;
  v16 = &v17;
  [loginChoices enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](loginChoices);
  *&v4 = MEMORY[0x277D82BD8](presentationContext2).n128_u64[0];
  [(AKCATiburonInputUIReporter *)selfCopy->_analyticsReport didShowAppleID:v23[3] & 1, v4];
  [(AKCATiburonInputUIReporter *)selfCopy->_analyticsReport setPasswordCredentialCount:v18[3]];
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
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x277CBEB18] array];
  if ([(AKAuthorizationInputPaneViewController *)selfCopy _hasNameScope])
  {
    [v4[0] addObject:*MEMORY[0x277CEFFE8]];
  }

  if ([(AKAuthorizationInputPaneViewController *)selfCopy _hasEmailScope])
  {
    [v4[0] addObject:*MEMORY[0x277CEFFE0]];
  }

  v2 = [v4[0] copy];
  validatedScopes = selfCopy->_validatedScopes;
  selfCopy->_validatedScopes = v2;
  MEMORY[0x277D82BD8](validatedScopes);
  objc_storeStrong(v4, 0);
}

- (void)_setupTableView
{
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Name"];
  tableView2 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationScopeEditTableViewCell-Name"];
  tableView3 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Summary"];
  tableView4 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Single"];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isSiwaCredentialSharingEnabled = [mEMORY[0x277CF0228] isSiwaCredentialSharingEnabled];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isSiwaCredentialSharingEnabled)
  {
    tableView5 = [(AKAuthorizationPaneViewController *)self tableView];
    [(UITableView *)tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationLoginChoiceCell"];
    v3 = MEMORY[0x277D82BD8](tableView5).n128_u64[0];
  }

  else
  {
    tableView6 = [(AKAuthorizationPaneViewController *)self tableView];
    [(UITableView *)tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationLoginChoiceCell"];
    v3 = MEMORY[0x277D82BD8](tableView6).n128_u64[0];
  }

  authorizationViewController = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  v10 = ![(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  v4 = MEMORY[0x277D82BD8](authorizationViewController).n128_u64[0];
  v20 = 0;
  v11 = 0;
  if (v10)
  {
    isTiburonU13Enabled = 0;
    if ([(AKAuthorizationInputPaneViewController *)self _isUnderageUser])
    {
      mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
      v20 = 1;
      isTiburonU13Enabled = [mEMORY[0x277CF0228]2 isTiburonU13Enabled];
    }

    v11 = (isTiburonU13Enabled & 1) == 0;
  }

  if (v20)
  {
    v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
  }

  tableView7 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)tableView7 setAllowsSelection:v11];
  tableView8 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)tableView8 setDataSource:self];
  tableView9 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)tableView9 setDelegate:self];
  MEMORY[0x277D82BD8](tableView9);
}

- (void)_setupAppIconView
{
  selfCopy = self;
  v9[1] = a2;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v9[0] = [AKIcon iconWithPresentationContext:?];
  if ([v9[0] iconType] == 1)
  {
    +[AKAuthorizationPaneMetrics iconSize];
    v5 = [AKIcon iconWithName:@"AppleLogo" size:v3, v4];
    v6 = v9[0];
    v9[0] = v5;
    *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  [(AKAuthorizationInputPaneViewController *)selfCopy _createAppIconViewWithIcon:v9[0], v2, v9];
  [(AKAuthorizationInputPaneViewController *)selfCopy _loadAppIconViewImage];
  objc_storeStrong(location, 0);
}

- (void)_setupInfoLabel
{
  v5 = [AKAuthorizationSubPaneInfoLabel alloc];
  _localizedInfoString = [(AKAuthorizationInputPaneViewController *)self _localizedInfoString];
  v2 = [(AKAuthorizationSubPaneInfoLabel *)v5 initWithString:?];
  infoLabel = self->_infoLabel;
  self->_infoLabel = v2;
  MEMORY[0x277D82BD8](infoLabel);
  *&v4 = MEMORY[0x277D82BD8](_localizedInfoString).n128_u64[0];
  v7 = self->_infoLabel;
  +[AKAuthorizationPaneMetrics infoLabelBottomSpacing];
  [(AKAuthorizationSubPane *)v7 setCustomSpacingAfter:?];
  headerPaneContext = [(AKAuthorizationPaneViewController *)self headerPaneContext];
  [(AKAuthorizationPaneContext *)headerPaneContext addSubPane:self->_infoLabel];
  MEMORY[0x277D82BD8](headerPaneContext);
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
  selfCopy = self;
  v39 = a2;
  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  isBiometricAuthCapable = [currentDevice isBiometricAuthCapable];
  *&v2 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  v38 = isBiometricAuthCapable;
  v37 = 0;
  if (isBiometricAuthCapable)
  {
    currentDevice2 = [MEMORY[0x277CF0218] currentDevice];
    isFaceIDCapable = [currentDevice2 isFaceIDCapable];
    MEMORY[0x277D82BD8](currentDevice2);
    v36 = isFaceIDCapable;
    if (isFaceIDCapable)
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

  headerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  +[AKAuthorizationPaneMetrics upgradeAccountTopSpacing];
  [(AKAuthorizationPaneContext *)headerPaneContext addEmptyViewWithSpacing:?];
  MEMORY[0x277D82BD8](headerPaneContext);
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
  headerPaneContext2 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  [(AKAuthorizationPaneContext *)headerPaneContext2 addSubPane:v35];
  *&v11 = MEMORY[0x277D82BD8](headerPaneContext2).n128_u64[0];
  headerPaneContext3 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  [(AKAuthorizationPaneContext *)headerPaneContext3 addSubPane:v34];
  *&v12 = MEMORY[0x277D82BD8](headerPaneContext3).n128_u64[0];
  v26 = v35;
  +[AKAuthorizationPaneMetrics upgradeAccountInterItemSpacing];
  [(AKAuthorizationSubPane *)v26 setCustomSpacingAfter:?];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v37, 0);
}

- (void)_setupAlternateButton
{
  footerPaneContext = [(AKAuthorizationPaneViewController *)self footerPaneContext];
  [(AKAuthorizationInputPaneViewController *)self _addUseOtherIDButtonToContext:?];
  MEMORY[0x277D82BD8](footerPaneContext);
}

- (void)_createAppIconViewWithIcon:(id)icon
{
  v41[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, icon);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (!isAuthKitSolariumFeatureEnabled)
  {
    v38 = objc_alloc_init(MEMORY[0x277D75D18]);
    headerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
    stackView = [(AKAuthorizationPaneContext *)headerPaneContext stackView];
    [(UIStackView *)stackView addArrangedSubview:v38];
    MEMORY[0x277D82BD8](stackView);
    *&v4 = MEMORY[0x277D82BD8](headerPaneContext).n128_u64[0];
    headerPaneContext2 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
    stackView2 = [(AKAuthorizationPaneContext *)headerPaneContext2 stackView];
    +[AKAuthorizationPaneMetrics iconTopSpacing];
    [(UIStackView *)stackView2 setCustomSpacing:v38 afterView:?];
    MEMORY[0x277D82BD8](stackView2);
    MEMORY[0x277D82BD8](headerPaneContext2);
    objc_storeStrong(&v38, 0);
  }

  automaskedImage = [location[0] automaskedImage];
  MEMORY[0x277D82BD8](0);
  v36 = [[AKAuthorizationSubPaneImage alloc] initWithImage:automaskedImage];
  image = [(AKAuthorizationSubPaneImage *)v36 image];
  [(UIImage *)image size];
  v34 = 0;
  v32 = 0;
  if (v5 == 0.0)
  {
    v24 = 1.0;
  }

  else
  {
    image2 = [(AKAuthorizationSubPaneImage *)v36 image];
    v34 = 1;
    [(UIImage *)image2 size];
    v23 = v6;
    image3 = [(AKAuthorizationSubPaneImage *)v36 image];
    v32 = 1;
    [(UIImage *)image3 size];
    v24 = v23 / v7;
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](image3);
  }

  if (v34)
  {
    MEMORY[0x277D82BD8](image2);
  }

  MEMORY[0x277D82BD8](image);
  v11 = v36;
  imageView = [(AKAuthorizationSubPaneImage *)v36 imageView];
  heightAnchor = [(UIImageView *)imageView heightAnchor];
  +[AKAuthorizationPaneMetrics iconSize];
  v18 = [heightAnchor constraintEqualToConstant:v8];
  v41[0] = v18;
  imageView2 = [(AKAuthorizationSubPaneImage *)v36 imageView];
  widthAnchor = [(UIImageView *)imageView2 widthAnchor];
  imageView3 = [(AKAuthorizationSubPaneImage *)v36 imageView];
  heightAnchor2 = [(UIImageView *)imageView3 heightAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:v24 multiplier:?];
  v41[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  [(AKAuthorizationSubPaneImage *)v11 setImageViewConstraints:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](imageView3);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](imageView2);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](heightAnchor);
  *&v9 = MEMORY[0x277D82BD8](imageView).n128_u64[0];
  headerPaneContext3 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  [(AKAuthorizationPaneContext *)headerPaneContext3 addSubPane:v36];
  *&v10 = MEMORY[0x277D82BD8](headerPaneContext3).n128_u64[0];
  v22 = v36;
  +[AKAuthorizationPaneMetrics iconBottomSpacing];
  [(AKAuthorizationSubPane *)v22 setCustomSpacingAfter:?];
  objc_storeStrong(&selfCopy->_imageSubPane, v36);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&automaskedImage, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_loadAppIconViewImage
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __63__AKAuthorizationInputPaneViewController__loadAppIconViewImage__block_invoke;
  v13 = &unk_2784A6FD8;
  objc_copyWeak(&v15, location);
  v14 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)_updateInfoLabelStringWithAppName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  localizedAppName = [(AKAuthorizationPresentationContext *)presentationContext localizedAppName];
  MEMORY[0x277D82BD8](localizedAppName);
  *&v3 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  if (!localizedAppName)
  {
    v5 = location[0];
    presentationContext2 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
    [(AKAuthorizationPresentationContext *)presentationContext2 setLocalizedAppName:v5];
    *&v4 = MEMORY[0x277D82BD8](presentationContext2).n128_u64[0];
    infoLabel = selfCopy->_infoLabel;
    _localizedInfoString = [(AKAuthorizationInputPaneViewController *)selfCopy _localizedInfoString];
    [AKAuthorizationSubPaneInfoLabel setString:"setString:animated:" animated:?];
    MEMORY[0x277D82BD8](_localizedInfoString);
  }

  objc_storeStrong(location, 0);
}

- (void)_setupPrivacyLink
{
  selfCopy = self;
  v24 = a2;
  authorizationViewController = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  v2 = MEMORY[0x277D82BD8](authorizationViewController).n128_u64[0];
  v23 = _isManagedAppleID;
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v10 = 0;
  if (_isManagedAppleID)
  {
    presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
    v20 = 1;
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
    v18 = 1;
    authorizationRequest = [credentialRequestContext authorizationRequest];
    v16 = 1;
    v10 = [authorizationRequest existingStatus] == 2;
  }

  if (v16)
  {
    v2 = MEMORY[0x277D82BD8](authorizationRequest).n128_u64[0];
  }

  if (v18)
  {
    v2 = MEMORY[0x277D82BD8](credentialRequestContext).n128_u64[0];
  }

  if (v20)
  {
    v2 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  }

  v22 = v10;
  if (v10)
  {
    footerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy footerPaneContext];
    *&v3 = MEMORY[0x277D82BD8](0).n128_u64[0];
    v14 = 0;
    if (v23)
    {
      v14 = 1;
      +[AKAuthorizationPaneMetrics privacyInfoTopSpacing];
      [(AKAuthorizationPaneContext *)footerPaneContext addEmptyViewWithSpacing:?];
      _localizedPrivacyMessageStringForManagedAppleID = [(AKAuthorizationInputPaneViewController *)selfCopy _localizedPrivacyMessageStringForManagedAppleID];
      v4 = [AKAuthorizationSubPaneInfoLabel alloc];
      v12 = [(AKAuthorizationSubPaneInfoLabel *)v4 initWithString:_localizedPrivacyMessageStringForManagedAppleID];
      [(AKAuthorizationSubPaneInfoLabel *)v12 setInfoLabelType:4];
      v7 = v12;
      +[AKAuthorizationPaneMetrics privacyInfoToLinkBottomSpacing];
      [(AKAuthorizationSubPane *)v7 setCustomSpacingAfter:?];
      [(AKAuthorizationPaneContext *)footerPaneContext addSubPane:v12];
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&_localizedPrivacyMessageStringForManagedAppleID, 0);
    }

    v5 = [AKAuthorizationSubPanePrivacyLink alloc];
    v11 = [(AKAuthorizationSubPanePrivacyLink *)v5 initWithPrivacyLinkType:v14];
    [(AKAuthorizationPaneContext *)footerPaneContext addSubPane:v11];
    v6 = footerPaneContext;
    +[AKAuthorizationPaneMetrics privacyLinkBottomSpacing];
    [(AKAuthorizationPaneContext *)v6 addEmptyViewWithSpacing:?];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&footerPaneContext, 0);
  }
}

- (void)_useOtherIDButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7038];
  [(AKAuthorizationInputPaneViewController *)selfCopy _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_performAdditionalCTA:(id)a
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a);
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
  [(AKAuthorizationInputPaneViewController *)selfCopy _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_addAuthorizationButtonToPaneContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v5 = [AKAuthorizationSubPaneConfirmButton alloc];
  presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  v10 = [(AKAuthorizationSubPaneConfirmButton *)v5 initWithPresentationContext:?];
  *&v3 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  [location[0] addSubPane:{v10, v3}];
  [(AKAuthorizationSubPaneConfirmButton *)v10 setDelegate:selfCopy];
  [(AKAuthorizationSubPaneConfirmButton *)v10 setUpButtonToPaneContext:location[0]];
  v7 = v10;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"BIO_BUTTON_SELECT_EMAIL" value:&stru_28358EF68 table:@"Localizable"];
  [(AKAuthorizationSubPaneConfirmButton *)v7 setBioTextForInactiveState:?];
  MEMORY[0x277D82BD8](v8);
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [(AKAuthorizationInputPaneViewController *)selfCopy setConfirmButton:v10, v4];
  [(AKAuthorizationInputPaneViewController *)selfCopy _enableOrDisableConfirmButton];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_addUseOtherIDButtonToContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  _isWebLogin = [credentialRequestContext _isWebLogin];
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  if (_isWebLogin)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v6 localizedStringForKey:@"USE_DIFFERENT_APPLE_ID_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
    v17 = [AKTextualLinkButton buttonWithText:v18 fontSize:selfCopy target:sel__useOtherIDButtonSelected_ action:13.0];
    stackView = [location[0] stackView];
    [stackView addArrangedSubview:v17];
    *&v3 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
    stackView2 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDTopSpacing];
    v8 = v4;
    stackView3 = [location[0] stackView];
    arrangedSubviews = [stackView3 arrangedSubviews];
    lastObject = [arrangedSubviews lastObject];
    [stackView2 setCustomSpacing:v8 afterView:?];
    MEMORY[0x277D82BD8](lastObject);
    MEMORY[0x277D82BD8](arrangedSubviews);
    MEMORY[0x277D82BD8](stackView3);
    *&v5 = MEMORY[0x277D82BD8](stackView2).n128_u64[0];
    stackView4 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDBottomSpacing];
    [stackView4 setCustomSpacing:v17 afterView:?];
    MEMORY[0x277D82BD8](stackView4);
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

- (void)_addAdditionalCTAToContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  _shouldShowAdditionalCTA = [credentialRequestContext _shouldShowAdditionalCTA];
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  if (_shouldShowAdditionalCTA)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v6 localizedStringForKey:@"ADDITIONAL_CTA" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
    v17 = [AKTextualLinkButton buttonWithText:v18 fontSize:selfCopy target:sel__performAdditionalCTA_ action:16.0];
    stackView = [location[0] stackView];
    [stackView addArrangedSubview:v17];
    *&v3 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
    stackView2 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDTopSpacing];
    v8 = v4;
    stackView3 = [location[0] stackView];
    arrangedSubviews = [stackView3 arrangedSubviews];
    lastObject = [arrangedSubviews lastObject];
    [stackView2 setCustomSpacing:v8 afterView:?];
    MEMORY[0x277D82BD8](lastObject);
    MEMORY[0x277D82BD8](arrangedSubviews);
    MEMORY[0x277D82BD8](stackView3);
    *&v5 = MEMORY[0x277D82BD8](stackView2).n128_u64[0];
    stackView4 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDBottomSpacing];
    [stackView4 setCustomSpacing:v17 afterView:?];
    MEMORY[0x277D82BD8](stackView4);
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

- (void)_addShimToStackView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v3 = location[0];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v3 addArrangedSubview:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_setupEscapeKeyListener
{
  selfCopy = self;
  v5[1] = a2;
  traitCollection = [(AKAuthorizationInputPaneViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  *&v2 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
  if (userInterfaceIdiom == 1)
  {
    v5[0] = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:{sel__escapeKeyPressed, v2}];
    [(AKAuthorizationInputPaneViewController *)selfCopy addKeyCommand:v5[0]];
    objc_storeStrong(v5, 0);
  }
}

- (void)_escapeKeyPressed
{
  selfCopy = self;
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
  [(AKAuthorizationInputPaneViewController *)selfCopy _userCanceledPanel];
}

- (void)_userCanceledPanel
{
  selfCopy = self;
  location[1] = a2;
  [(AKCATiburonInputUIReporter *)self->_analyticsReport didComplete:0];
  [(AKCAReporter *)selfCopy->_analyticsReport sendReport];
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
  [(AKAuthorizationInputPaneViewController *)selfCopy _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:v4];
  objc_storeStrong(&v4, 0);
}

- (void)_setEditableScopeChoicesForManagedAppleID
{
  selfCopy = self;
  v10 = a2;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  location = [userInformation sharedEmailForManagedAppleID];
  MEMORY[0x277D82BD8](userInformation);
  v2 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  if (location)
  {
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    userInformation2 = [(AKAuthorizationScopeChoices *)editableScopeChoices userInformation];
    reachableEmails = [(AKUserInformation *)userInformation2 reachableEmails];
    v9 = [reachableEmails indexOfObject:location];
    MEMORY[0x277D82BD8](reachableEmails);
    MEMORY[0x277D82BD8](userInformation2);
    v2 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
  }

  [(AKAuthorizationScopeChoices *)selfCopy->_editableScopeChoices setIndexOfChosenEmail:v9, *&v2];
  [(AKAuthorizationScopeChoices *)selfCopy->_editableScopeChoices setWantsPrivateEmail:0];
  objc_storeStrong(&location, 0);
}

- (id)_localizedPrivacyMessageStringForManagedAppleID
{
  location[2] = self;
  location[1] = a2;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  location[0] = [(AKAuthorizationPresentationContext *)presentationContext localizedAppName];
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
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  sharedEmailForManagedAppleID = [userInformation sharedEmailForManagedAppleID];
  MEMORY[0x277D82BD8](sharedEmailForManagedAppleID);
  MEMORY[0x277D82BD8](userInformation);
  *&v2 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  if (sharedEmailForManagedAppleID)
  {
    managedOrganizationName = 0;
  }

  else
  {
    presentationContext2 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    userInformation2 = [(AKAuthorizationPresentationContext *)presentationContext2 userInformation];
    managedOrganizationName = [userInformation2 managedOrganizationName];
    MEMORY[0x277D82BD8](userInformation2);
    MEMORY[0x277D82BD8](presentationContext2);
  }

  return managedOrganizationName;
}

- (BOOL)_hasSharedAccountLoginChoices
{
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  hasSharedAccountLoginChoices = [(AKAuthorizationPresentationContext *)presentationContext hasSharedAccountLoginChoices];
  MEMORY[0x277D82BD8](presentationContext);
  return hasSharedAccountLoginChoices;
}

- (BOOL)_shouldPresentCreateFlow
{
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  isUnderage = [userInformation isUnderage];
  bOOLValue = [isUnderage BOOLValue];
  MEMORY[0x277D82BD8](isUnderage);
  MEMORY[0x277D82BD8](userInformation);
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  primaryiCloudAccountHasPendingDOB = [mEMORY[0x277CF0130] primaryiCloudAccountHasPendingDOB];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0130]).n128_u64[0];
  if ((bOOLValue & 1) == 0 && (primaryiCloudAccountHasPendingDOB & 1) == 0)
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    LOBYTE(v14) = 0;
    if ([mEMORY[0x277CF0228] isSiwaCredentialSharingEnabled])
    {
      v14 = ![(AKAuthorizationInputPaneViewController *)self _shouldPresentUpgradeFlow];
    }

    *&v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
    if (v14)
    {
      if ([(AKAuthorizationInputPaneViewController *)self _hasSharedAccountLoginChoices])
      {
        return 0;
      }

      loginChoices = [(AKAuthorizationPresentationContext *)self->_presentationContext loginChoices];
      v12 = [loginChoices count];
      v4 = MEMORY[0x277D82BD8](loginChoices).n128_u64[0];
      if (v12)
      {
        return 0;
      }
    }

    else
    {
      loginChoices2 = [(AKAuthorizationPresentationContext *)self->_presentationContext loginChoices];
      v10 = [loginChoices2 count];
      v4 = MEMORY[0x277D82BD8](loginChoices2).n128_u64[0];
      if (v10)
      {
        return 0;
      }
    }

    presentationContext2 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext2 credentialRequestContext];
    passwordRequest = [credentialRequestContext passwordRequest];
    v22 = passwordRequest == 0;
    MEMORY[0x277D82BD8](passwordRequest);
    MEMORY[0x277D82BD8](credentialRequestContext);
    MEMORY[0x277D82BD8](presentationContext2);
    return v22;
  }

  return 0;
}

- (BOOL)_shouldPresentUpgradeFlow
{
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  _isEligibleForUpgradeFromPassword = [credentialRequestContext _isEligibleForUpgradeFromPassword];
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  return _isEligibleForUpgradeFromPassword;
}

- (BOOL)_hasOneLoginChoice
{
  authorizationViewController = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  *&v2 = MEMORY[0x277D82BD8](authorizationViewController).n128_u64[0];
  if (_isManagedAppleID)
  {
    presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
    sharedEmailForManagedAppleID = [userInformation sharedEmailForManagedAppleID];
    v11 = [sharedEmailForManagedAppleID length] != 0;
    MEMORY[0x277D82BD8](sharedEmailForManagedAppleID);
    MEMORY[0x277D82BD8](userInformation);
    MEMORY[0x277D82BD8](presentationContext);
  }

  else
  {
    loginChoices = [(AKAuthorizationPresentationContext *)self->_presentationContext loginChoices];
    v11 = [loginChoices count] == 1;
    MEMORY[0x277D82BD8](loginChoices);
  }

  return v11;
}

- (id)_firstLoginChoice
{
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  loginChoices = [(AKAuthorizationPresentationContext *)presentationContext loginChoices];
  firstObject = [loginChoices firstObject];
  MEMORY[0x277D82BD8](loginChoices);
  MEMORY[0x277D82BD8](presentationContext);

  return firstObject;
}

- (BOOL)_hasNameScope
{
  editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  scopes = [(AKAuthorizationScopeChoices *)editableScopeChoices scopes];
  v5 = [(NSArray *)scopes containsObject:*MEMORY[0x277CEFFE8]];
  MEMORY[0x277D82BD8](scopes);
  MEMORY[0x277D82BD8](editableScopeChoices);
  return v5;
}

- (BOOL)_hasEmailScope
{
  editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  scopes = [(AKAuthorizationScopeChoices *)editableScopeChoices scopes];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if ([(NSArray *)scopes containsObject:*MEMORY[0x277CEFFE0]])
  {
    editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v10 = 1;
    userInformation = [(AKAuthorizationScopeChoices *)editableScopeChoices2 userInformation];
    v8 = 1;
    reachableEmails = [(AKUserInformation *)userInformation reachableEmails];
    v6 = 1;
    v5 = [reachableEmails count] != 0;
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](reachableEmails);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](userInformation);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](editableScopeChoices2);
  }

  MEMORY[0x277D82BD8](scopes);
  MEMORY[0x277D82BD8](editableScopeChoices);
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
  editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  wantsPrivateEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices wantsPrivateEmail];
  editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  v8 = [(AKAuthorizationScopeChoices *)editableScopeChoices2 indexOfChosenEmail]!= 0x7FFFFFFFFFFFFFFFLL;
  authorizationViewController = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  v6 = 1;
  if ([(AKAuthorizationInputPaneViewController *)self _hasEmailScope])
  {
    v6 = 1;
    if (!wantsPrivateEmail)
    {
      v6 = 1;
      if (!v8)
      {
        v6 = _isManagedAppleID;
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
    authorizationViewController = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
    _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
    *&v2 = MEMORY[0x277D82BD8](authorizationViewController).n128_u64[0];
    if (_isManagedAppleID)
    {
      return [(AKAuthorizationInputPaneViewController *)self _emailScopeAllowsAuthorization];
    }

    else
    {
      editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      v9 = [(AKAuthorizationScopeChoices *)editableScopeChoices indexOfChosenLogin]!= 0x7FFFFFFFFFFFFFFFLL;
      MEMORY[0x277D82BD8](editableScopeChoices);
    }
  }

  return v9;
}

- (BOOL)_isUnderageUser
{
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  isUnderage = [userInformation isUnderage];
  bOOLValue = [isUnderage BOOLValue];
  MEMORY[0x277D82BD8](isUnderage);
  MEMORY[0x277D82BD8](userInformation);
  MEMORY[0x277D82BD8](presentationContext);
  return bOOLValue;
}

- (id)_paneTitleString
{
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  _isFirstPartyLogin = [credentialRequestContext _isFirstPartyLogin];
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  if (_isFirstPartyLogin)
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
    _localizedUpgradeString = [(AKAuthorizationInputPaneViewController *)self _localizedUpgradeString];
  }

  else
  {
    presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
    _isSubscriptionLogin = [credentialRequestContext _isSubscriptionLogin];
    MEMORY[0x277D82BD8](credentialRequestContext);
    *&v2 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
    if (_isSubscriptionLogin)
    {
      _localizedUpgradeString = [(AKAuthorizationInputPaneViewController *)self _localizedSubscriptionString];
    }

    else if ([(AKAuthorizationInputPaneViewController *)self _shouldPresentCreateFlow])
    {
      _localizedUpgradeString = [(AKAuthorizationInputPaneViewController *)self _localizedAuthorizationString];
    }

    else if ([(AKAuthorizationInputPaneViewController *)self _hasSharedAccountLoginChoices])
    {
      _localizedUpgradeString = [(AKAuthorizationInputPaneViewController *)self _localizedSharedAccountsChoiceString];
    }

    else
    {
      _localizedUpgradeString = [(AKAuthorizationInputPaneViewController *)self _localizedChoiceString];
    }
  }

  return _localizedUpgradeString;
}

- (id)_localizedAuthorizationString
{
  v70 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v65[1] = a2;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  v65[0] = [userInformation accountName];
  MEMORY[0x277D82BD8](userInformation);
  presentationContext2 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  localizedAppName = [(AKAuthorizationPresentationContext *)presentationContext2 localizedAppName];
  presentationContext3 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext3 credentialRequestContext];
  _proxiedDeviceName = [credentialRequestContext _proxiedDeviceName];
  MEMORY[0x277D82BD8](credentialRequestContext);
  presentationContext4 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  credentialRequestContext2 = [(AKAuthorizationPresentationContext *)presentationContext4 credentialRequestContext];
  _proxiedDeviceClass = [credentialRequestContext2 _proxiedDeviceClass];
  MEMORY[0x277D82BD8](credentialRequestContext2);
  v61 = [v65[0] length] != 0;
  v60 = [localizedAppName length] != 0;
  v43 = 0;
  if ([_proxiedDeviceName length])
  {
    v43 = [_proxiedDeviceClass length] != 0;
  }

  v59 = v43;
  presentationContext5 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  userInformation2 = [(AKAuthorizationPresentationContext *)presentationContext5 userInformation];
  isManagedAppleID = [userInformation2 isManagedAppleID];
  MEMORY[0x277D82BD8](userInformation2);
  v58 = isManagedAppleID;
  presentationContext6 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  credentialRequestContext3 = [(AKAuthorizationPresentationContext *)presentationContext6 credentialRequestContext];
  v35 = 0;
  if ([credentialRequestContext3 _isFirstPartyLogin])
  {
    v35 = 0;
    if (v60)
    {
      v35 = v61;
    }
  }

  MEMORY[0x277D82BD8](credentialRequestContext3);
  *&v2 = MEMORY[0x277D82BD8](presentationContext6).n128_u64[0];
  if (v35)
  {
    v67 = [(AKAuthorizationInputPaneViewController *)selfCopy _localizedFirstPartyAuthorizationStringWithAppName:localizedAppName accountName:v65[0], v2];
    v57 = 1;
  }

  else
  {
    v56 = [(AKAuthorizationInputPaneViewController *)selfCopy _localizedAuthorizationPrefix:v58 & 1, v2];
    if (v58)
    {
      presentationContext7 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
      userInformation3 = [(AKAuthorizationPresentationContext *)presentationContext7 userInformation];
      managedOrganizationName = [userInformation3 managedOrganizationName];
      MEMORY[0x277D82BD8](userInformation3);
      v54 = [managedOrganizationName length] != 0;
      if (v60 && v59 && v54)
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_PROXIED_FORMAT", v56];
        v25 = MEMORY[0x277CCACA8];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v27 localizedStringForKey:v53 value:&stru_28358EF68 table:@"Localizable"];
        v67 = [v25 stringWithFormat:localizedAppName, _proxiedDeviceClass, _proxiedDeviceName, v54];
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
        v67 = [v22 stringWithFormat:localizedAppName, managedOrganizationName];
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
        v67 = [v19 stringWithFormat:localizedAppName];
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

      objc_storeStrong(&managedOrganizationName, 0);
    }

    else if (v61 && v60 && v59)
    {
      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_PROXIED_FORMAT", v56];
      v15 = MEMORY[0x277CCACA8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v17 localizedStringForKey:v48 value:&stru_28358EF68 table:@"Localizable"];
      v67 = [v15 stringWithFormat:localizedAppName, _proxiedDeviceClass, _proxiedDeviceName, v65[0]];
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
      v67 = [v12 stringWithFormat:localizedAppName, v65[0]];
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
      v67 = [v9 stringWithFormat:localizedAppName];
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

  objc_storeStrong(&_proxiedDeviceClass, 0);
  objc_storeStrong(&_proxiedDeviceName, 0);
  objc_storeStrong(&localizedAppName, 0);
  objc_storeStrong(v65, 0);
  *MEMORY[0x277D85DE8];
  v3 = v67;

  return v3;
}

- (id)_localizedFirstPartyAuthorizationStringWithAppName:(id)name accountName:(id)accountName
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v16 = 0;
  objc_storeStrong(&v16, accountName);
  v15 = MEMORY[0x277D82BE0](@"AUTHORIZE_APPLE_ID_1ST_PARTY_LOGIN_REBRAND");
  presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  signInAllowsPCSKeyAccess = [(AKAuthorizationPresentationContext *)presentationContext signInAllowsPCSKeyAccess];
  *&v4 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  if (signInAllowsPCSKeyAccess)
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

- (id)_localizedAuthorizationPrefix:(BOOL)prefix
{
  if ([(AKAuthorizationInputPaneViewController *)self _shouldPresentCreateFlow])
  {
    if (prefix)
    {
      v5 = MEMORY[0x277D82BE0](@"AUTHORIZE_MANAGED_APPLE_ACCOUNT_CREATE");
    }

    else
    {
      v5 = MEMORY[0x277D82BE0](@"AUTHORIZE_APPLE_ACCOUNT_CREATE");
    }
  }

  else if (prefix)
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
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  localizedAppName = [(AKAuthorizationPresentationContext *)presentationContext localizedAppName];
  v8 = [v3 stringWithFormat:v6, localizedAppName];
  MEMORY[0x277D82BD8](localizedAppName);
  MEMORY[0x277D82BD8](presentationContext);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  return v8;
}

- (id)_localizedSubscriptionString
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  authorizationRequest = [credentialRequestContext authorizationRequest];
  existingStatus = [authorizationRequest existingStatus];
  MEMORY[0x277D82BD8](authorizationRequest);
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  if (existingStatus == 1)
  {
    objc_storeStrong(location, @"AUTHORIZE_APPLE_ID_WELCOME_SUBSCRIPTION");
  }

  else
  {
    objc_storeStrong(location, @"AUTHORIZE_APPLEID_CREATE_SUBSCRIPTION");
  }

  presentationContext2 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  localizedAppName = [(AKAuthorizationPresentationContext *)presentationContext2 localizedAppName];
  if ([localizedAppName length])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_APPNAME_FORMAT", location[0]];
    v3 = location[0];
    location[0] = v2;
    MEMORY[0x277D82BD8](v3);
    v7 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:location[0] value:&stru_28358EF68 table:@"Localizable"];
    v18 = [v7 stringWithFormat:localizedAppName];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v6 localizedStringForKey:location[0] value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&localizedAppName, 0);
  objc_storeStrong(location, 0);
  v4 = v18;

  return v4;
}

- (id)_localizedSharedAccountsChoiceString
{
  selfCopy = self;
  location[1] = a2;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  location[0] = [(AKAuthorizationPresentationContext *)presentationContext localizedAppName];
  presentationContext2 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  hasCreateAccountLoginChoice = [(AKAuthorizationPresentationContext *)presentationContext2 hasCreateAccountLoginChoice];
  MEMORY[0x277D82BD8](presentationContext2);
  if (hasCreateAccountLoginChoice)
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
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  localizedAppName = [(AKAuthorizationPresentationContext *)presentationContext localizedAppName];
  v8 = [v3 stringWithFormat:v6, localizedAppName];
  MEMORY[0x277D82BD8](localizedAppName);
  MEMORY[0x277D82BD8](presentationContext);
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
  authorizationViewController = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  *&v2 = MEMORY[0x277D82BD8](authorizationViewController).n128_u64[0];
  if (_isManagedAppleID)
  {
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    chosenEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices chosenEmail];
    MEMORY[0x277D82BD8](editableScopeChoices);
  }

  else
  {
    editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    indexOfChosenEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices2 indexOfChosenEmail];
    *&v3 = MEMORY[0x277D82BD8](editableScopeChoices2).n128_u64[0];
    if (indexOfChosenEmail == 0x7FFFFFFFFFFFFFFFLL)
    {
      editableScopeChoices3 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      chosenEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices3 emailAtIndex:0];
      MEMORY[0x277D82BD8](editableScopeChoices3);
    }

    else
    {
      editableScopeChoices4 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      chosenEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices4 chosenEmail];
      MEMORY[0x277D82BD8](editableScopeChoices4);
    }
  }

  return chosenEmail;
}

- (id)_selectedLoginChoice
{
  v7 = 0;
  v6 = 1;
  if (![(AKAuthorizationInputPaneViewController *)self _shouldPresentCreateFlow])
  {
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v7 = 1;
    v6 = [(AKAuthorizationScopeChoices *)editableScopeChoices indexOfChosenLogin]== 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](editableScopeChoices);
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    loginChoices = [(AKAuthorizationPresentationContext *)presentationContext loginChoices];
    editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v10 = [loginChoices objectAtIndex:{-[AKAuthorizationScopeChoices indexOfChosenLogin](editableScopeChoices2, "indexOfChosenLogin")}];
    MEMORY[0x277D82BD8](editableScopeChoices2);
    MEMORY[0x277D82BD8](loginChoices);
    MEMORY[0x277D82BD8](presentationContext);
  }

  return v10;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (![(AKAuthorizationInputPaneViewController *)selfCopy isEditingName])
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isSiwaCredentialSharingEnabled = [mEMORY[0x277CF0228] isSiwaCredentialSharingEnabled];
    *&v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
    if (isSiwaCredentialSharingEnabled)
    {
      if ([(AKAuthorizationInputPaneViewController *)selfCopy _shouldPresentUpgradeFlow])
      {
        v16 = 0;
        goto LABEL_16;
      }

      presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
      loginChoices = [(AKAuthorizationPresentationContext *)presentationContext loginChoices];
      v9 = [loginChoices count];
      MEMORY[0x277D82BD8](loginChoices);
      v4 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
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
      if ([(AKAuthorizationInputPaneViewController *)selfCopy _hasOneLoginChoice])
      {
        _firstLoginChoice = [(AKAuthorizationInputPaneViewController *)selfCopy _firstLoginChoice];
        v12 = 1;
        HIDWORD(v6) = [_firstLoginChoice isAppleIDAuthorization];
      }

      LODWORD(v6) = HIDWORD(v6);
      if (v12)
      {
        v4 = MEMORY[0x277D82BD8](_firstLoginChoice).n128_u64[0];
      }

      if ((v6 & 0x100000000) != 0)
      {
        v16 = 0;
        goto LABEL_16;
      }
    }

    v16 = [(NSArray *)selfCopy->_validatedScopes count:*&v4];
    goto LABEL_16;
  }

  v16 = 1;
LABEL_16:
  objc_storeStrong(location, 0);
  return v16;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  loginChoices = [(AKAuthorizationPresentationContext *)presentationContext loginChoices];
  v9 = [loginChoices count];
  MEMORY[0x277D82BD8](loginChoices);
  *&v4 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  v12 = v9;
  if ([(AKAuthorizationInputPaneViewController *)selfCopy isEditingName])
  {
    v16 = 2;
    v11 = 1;
  }

  else if ([(AKAuthorizationInputPaneViewController *)selfCopy _shouldPresentCreateFlow])
  {
    v10 = [(NSArray *)selfCopy->_validatedScopes objectAtIndexedSubscript:sectionCopy];
    v16 = [(AKAuthorizationInputPaneViewController *)selfCopy _numberOfRowsInScope:v10];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v14 = 0;
  objc_storeStrong(&v14, path);
  section = [v14 section];
  v12 = [v14 row];
  if ([(AKAuthorizationInputPaneViewController *)selfCopy isEditingName])
  {
    v17 = [(AKAuthorizationInputPaneViewController *)selfCopy _editingNameCellForRow:v12];
    v11 = 1;
  }

  else if ([(AKAuthorizationInputPaneViewController *)selfCopy _shouldPresentCreateFlow])
  {
    v10 = [(NSArray *)selfCopy->_validatedScopes objectAtIndexedSubscript:section];
    v17 = -[AKAuthorizationInputPaneViewController _cellForScope:localRow:](selfCopy, "_cellForScope:localRow:", v10, [v14 row]);
    v11 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    LOBYTE(v8) = 0;
    if ([mEMORY[0x277CF0228] isSiwaCredentialSharingEnabled])
    {
      v8 = ![(AKAuthorizationInputPaneViewController *)selfCopy _shouldPresentUpgradeFlow];
    }

    *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
    if (v8)
    {
      v17 = [(AKAuthorizationInputPaneViewController *)selfCopy _loginChoiceTableViewCellForRow:v12, v4];
    }

    else
    {
      v17 = [(AKAuthorizationInputPaneViewController *)selfCopy _loginChoiceCellForRow:v12, v4];
    }

    v11 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v5 = v17;

  return v5;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = 0;
  objc_storeStrong(&v7, path);
  v6 = ![(AKAuthorizationInputPaneViewController *)selfCopy isEditingName];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v63 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v58 = 0;
  objc_storeStrong(&v58, path);
  section = [v58 section];
  v56 = [v58 row];
  if ([(AKAuthorizationInputPaneViewController *)selfCopy _shouldPresentCreateFlow])
  {
    if (![(AKAuthorizationInputPaneViewController *)selfCopy isEditingName])
    {
      v55 = [(NSArray *)selfCopy->_validatedScopes objectAtIndexedSubscript:section];
      -[AKAuthorizationInputPaneViewController _selectScope:localRow:](selfCopy, "_selectScope:localRow:", v55, [v58 row]);
      [location[0] deselectRowAtIndexPath:v58 animated:1];
      objc_storeStrong(&v55, 0);
    }
  }

  else
  {
    presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
    loginChoices = [(AKAuthorizationPresentationContext *)presentationContext loginChoices];
    v40 = [loginChoices count];
    MEMORY[0x277D82BD8](loginChoices);
    *&v4 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
    if (v56 < v40)
    {
      mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
      _hasSharedAccountLoginChoices = 0;
      if ([mEMORY[0x277CF0228] isSiwaCredentialSharingEnabled])
      {
        _hasSharedAccountLoginChoices = [(AKAuthorizationInputPaneViewController *)selfCopy _hasSharedAccountLoginChoices];
      }

      *&v5 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
      if (_hasSharedAccountLoginChoices)
      {
        editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
        indexOfChosenLogin = [(AKAuthorizationScopeChoices *)editableScopeChoices indexOfChosenLogin];
        *&v6 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
        if (indexOfChosenLogin != 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = MEMORY[0x277CCAA70];
          editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
          v52 = [v29 indexPathForRow:-[AKAuthorizationScopeChoices indexOfChosenLogin](editableScopeChoices2 inSection:{"indexOfChosenLogin"), 0}];
          *&v7 = MEMORY[0x277D82BD8](editableScopeChoices2).n128_u64[0];
          v51 = [location[0] cellForRowAtIndexPath:{v52, v7}];
          [v51 setChecked:0];
          objc_storeStrong(&v51, 0);
          objc_storeStrong(&v52, 0);
        }

        presentationContext2 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
        loginChoices2 = [(AKAuthorizationPresentationContext *)presentationContext2 loginChoices];
        v28 = [loginChoices2 count];
        MEMORY[0x277D82BD8](loginChoices2);
        *&v8 = MEMORY[0x277D82BD8](presentationContext2).n128_u64[0];
        if (v28 > 1)
        {
          [(AKAuthorizationInputPaneViewController *)selfCopy _selectLoginChoiceCell:v58, v8];
        }

        presentationContext3 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
        v49 = 0;
        v47 = 0;
        v45 = 0;
        shouldCreateAppleID = 0;
        if (([(AKAuthorizationPresentationContext *)presentationContext3 hasCreateAccountLoginChoice]& 1) != 0)
        {
          presentationContext4 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
          v49 = 1;
          loginChoices3 = [(AKAuthorizationPresentationContext *)presentationContext4 loginChoices];
          v47 = 1;
          v46 = [loginChoices3 objectAtIndex:v56];
          v45 = 1;
          shouldCreateAppleID = [v46 shouldCreateAppleID];
        }

        if (v45)
        {
          MEMORY[0x277D82BD8](v46);
        }

        if (v47)
        {
          MEMORY[0x277D82BD8](loginChoices3);
        }

        if (v49)
        {
          MEMORY[0x277D82BD8](presentationContext4);
        }

        *&v9 = MEMORY[0x277D82BD8](presentationContext3).n128_u64[0];
        if (shouldCreateAppleID)
        {
          confirmButton = [(AKAuthorizationInputPaneViewController *)selfCopy confirmButton];
          [(AKAuthorizationSubPaneConfirmButton *)confirmButton switchToAccountCreation];
          v10 = MEMORY[0x277D82BD8](confirmButton).n128_u64[0];
        }

        else
        {
          confirmButton2 = [(AKAuthorizationInputPaneViewController *)selfCopy confirmButton];
          [(AKAuthorizationSubPaneConfirmButton *)confirmButton2 resetToDefault];
          v10 = MEMORY[0x277D82BD8](confirmButton2).n128_u64[0];
        }

        [(AKAuthorizationInputPaneViewController *)selfCopy _enableOrDisableConfirmButton];
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
        editableScopeChoices3 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
        indexOfChosenLogin2 = [(AKAuthorizationScopeChoices *)editableScopeChoices3 indexOfChosenLogin];
        *&v11 = MEMORY[0x277D82BD8](editableScopeChoices3).n128_u64[0];
        if (indexOfChosenLogin2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = MEMORY[0x277CCAA70];
          editableScopeChoices4 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
          v42 = [v17 indexPathForRow:-[AKAuthorizationScopeChoices indexOfChosenLogin](editableScopeChoices4 inSection:"indexOfChosenLogin")];
          *&v12 = MEMORY[0x277D82BD8](editableScopeChoices4).n128_u64[0];
          v19 = [location[0] cellForRowAtIndexPath:{v42, v12}];
          [v19 setAccessoryType:0];
          MEMORY[0x277D82BD8](v19);
          objc_storeStrong(&v42, 0);
        }

        v15 = [location[0] cellForRowAtIndexPath:v58];
        [v15 setAccessoryType:3];
        *&v13 = MEMORY[0x277D82BD8](v15).n128_u64[0];
        editableScopeChoices5 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
        [(AKAuthorizationScopeChoices *)editableScopeChoices5 setIndexOfChosenLogin:v56];
        *&v14 = MEMORY[0x277D82BD8](editableScopeChoices5).n128_u64[0];
        [(AKAuthorizationInputPaneViewController *)selfCopy _enableOrDisableConfirmButton];
      }
    }

    else
    {
      v54 = _AKLogSiwa();
      v53 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v35 = [v58 row];
        presentationContext5 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
        loginChoices4 = [(AKAuthorizationPresentationContext *)presentationContext5 loginChoices];
        __os_log_helper_16_0_2_8_0_8_0(v62, v35, [loginChoices4 count]);
        _os_log_error_impl(&dword_222379000, v54, v53, "Row %ld selected from %ld available login choices.", v62, 0x16u);
        MEMORY[0x277D82BD8](loginChoices4);
        MEMORY[0x277D82BD8](presentationContext5);
      }

      objc_storeStrong(&v54, 0);
    }
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_loginChoiceTableViewCellForRow:(unint64_t)row
{
  selfCopy = self;
  v46 = a2;
  rowCopy = row;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  loginChoices = [(AKAuthorizationPresentationContext *)presentationContext loginChoices];
  v44 = [loginChoices objectAtIndex:rowCopy];
  MEMORY[0x277D82BD8](loginChoices);
  MEMORY[0x277D82BD8](presentationContext);
  v43 = [[AKAuthorizationLoginChoiceTableViewCell alloc] initWithLoginChoice:v44 reuseIdentifier:@"AKAuthorizationLoginChoiceCell"];
  [(AKAuthorizationLoginChoiceTableViewCell *)v43 setAccessibilityIdentifier:0x283591908];
  +[AKAuthorizationPaneMetrics nameCellHeight];
  [(AKAuthorizationScopeDetailTableViewCell *)v43 setMinimumHeight:?];
  if (![v44 isAppleIDAuthorization])
  {
    presentationContext2 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
    v25 = [AKIcon iconWithPresentationContext:?];
    automaskedImage = [(AKIcon *)v25 automaskedImage];
    [(AKAuthorizationLoginChoiceTableViewCell *)v43 setIconImage:?];
    MEMORY[0x277D82BD8](automaskedImage);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](presentationContext2);
  }

  presentationContext3 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  loginChoices2 = [(AKAuthorizationPresentationContext *)presentationContext3 loginChoices];
  v23 = [loginChoices2 count];
  MEMORY[0x277D82BD8](loginChoices2);
  *&v3 = MEMORY[0x277D82BD8](presentationContext3).n128_u64[0];
  if (v23 == 1)
  {
    [(AKAuthorizationScopeDetailTableViewCell *)v43 setCheckmarkStyle:v3];
    [(AKAuthorizationLoginChoiceTableViewCell *)v43 setSelectionStyle:0];
  }

  else
  {
    [(AKAuthorizationScopeDetailTableViewCell *)v43 setCheckmarkStyle:2, v3];
  }

  editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
  [(AKAuthorizationScopeDetailTableViewCell *)v43 setChecked:[(AKAuthorizationScopeChoices *)editableScopeChoices indexOfChosenLogin]== rowCopy];
  +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
  v20 = [AKSignInWithAppleAvatarManager placeholderAvatarImageForPrimaryAccountOwnerWithDiameter:?];
  [(AKAuthorizationScopeDetailTableViewCell *)v43 setScopeImage:?];
  MEMORY[0x277D82BD8](v20);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = MEMORY[0x277D82BE0](v44);
    sharedAccount = [v42 sharedAccount];
    shareInfo = [sharedAccount shareInfo];
    participantHandle = [shareInfo participantHandle];
    MEMORY[0x277D82BD8](shareInfo);
    *&v4 = MEMORY[0x277D82BD8](sharedAccount).n128_u64[0];
    sharedIconImageView = [(AKAuthorizationLoginChoiceTableViewCell *)v43 sharedIconImageView];
    sharedAccount2 = [v42 sharedAccount];
    shareInfo2 = [sharedAccount2 shareInfo];
    -[UIImageView setHidden:](sharedIconImageView, "setHidden:", [shareInfo2 isCurrentUser]);
    MEMORY[0x277D82BD8](shareInfo2);
    MEMORY[0x277D82BD8](sharedAccount2);
    *&v5 = MEMORY[0x277D82BD8](sharedIconImageView).n128_u64[0];
    v17 = participantHandle;
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
    objc_storeStrong(&participantHandle, 0);
    objc_storeStrong(&v42, 0);
  }

  else
  {
    sharedIconImageView2 = [(AKAuthorizationLoginChoiceTableViewCell *)v43 sharedIconImageView];
    [(UIImageView *)sharedIconImageView2 setHidden:1];
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

- (void)_selectLoginChoiceCell:(id)cell
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView selectRowAtIndexPath:location[0] animated:1 scrollPosition:1];
  *&v3 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  v11 = [(UITableView *)tableView2 cellForRowAtIndexPath:location[0]];
  *&v4 = MEMORY[0x277D82BD8](tableView2).n128_u64[0];
  [(UITableViewCell *)v11 setChecked:1, v4];
  v10 = [location[0] row];
  editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
  [(AKAuthorizationScopeChoices *)editableScopeChoices setIndexOfChosenLogin:v10];
  *&v5 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
  tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView3 deselectRowAtIndexPath:location[0] animated:1];
  MEMORY[0x277D82BD8](tableView3);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  v7 = [location[0] tag];
  returnKeyType = [location[0] returnKeyType];
  if (returnKeyType == 4)
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _beginEditingRow:v7 + 1];
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  if (returnKeyType == 9)
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _nameEditDone];
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

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v21 = 0;
  objc_storeStrong(&v21, string);
  text = [location[0] text];
  v20 = [text stringByReplacingCharactersInRange:rangeCopy.location withString:{rangeCopy.length, v21}];
  *&v5 = MEMORY[0x277D82BD8](text).n128_u64[0];
  v15 = rangeCopy.location;
  v26 = v15 + [v21 length];
  v25 = 0;
  v27 = v26;
  v28 = 0;
  v19[0] = v26;
  v19[1] = 0;
  nameFormatter = [(AKAuthorizationInputPaneViewController *)selfCopy nameFormatter];
  v6 = MEMORY[0x277D82BD8](nameFormatter).n128_u64[0];
  if (!nameFormatter)
  {
    v7 = objc_alloc_init(AKAuthorizationNameFormatter);
    nameFormatter = selfCopy->_nameFormatter;
    selfCopy->_nameFormatter = v7;
    v6 = MEMORY[0x277D82BD8](nameFormatter).n128_u64[0];
  }

  nameFormatter2 = [(AKAuthorizationInputPaneViewController *)selfCopy nameFormatter];
  v17 = v20;
  text2 = [location[0] text];
  v12 = [AKAuthorizationNameFormatter isPartialStringValid:nameFormatter2 proposedSelectedRange:"isPartialStringValid:proposedSelectedRange:originalString:originalSelectedRange:errorDescription:" originalString:&v17 originalSelectedRange:v19 errorDescription:?];
  objc_storeStrong(&v20, v17);
  MEMORY[0x277D82BD8](text2);
  MEMORY[0x277D82BD8](nameFormatter2);
  v18 = v12;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  return v12;
}

- (id)_cellForScope:(id)scope localRow:(int64_t)row
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scope);
  rowCopy = row;
  if ([location[0] isEqualToString:*MEMORY[0x277CEFFE8]])
  {
    _nameCell = [(AKAuthorizationInputPaneViewController *)selfCopy _nameCell];
    v8 = 1;
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CEFFE0]])
  {
    _nameCell = [(AKAuthorizationInputPaneViewController *)selfCopy _emailCellForLocalRow:rowCopy];
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
    _nameCell = 0;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = _nameCell;

  return v4;
}

- (id)_nameCell
{
  selfCopy = self;
  v32[1] = a2;
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  v32[0] = [(UITableView *)tableView dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Name"];
  [v32[0] setAccessibilityIdentifier:{0x283591888, MEMORY[0x277D82BD8](tableView).n128_f64[0]}];
  +[AKAuthorizationPaneMetrics nameCellHeight];
  [v32[0] setMinimumHeight:?];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable == 1)
  {
    scopeLabel = [v32[0] scopeLabel];
    [scopeLabel setText:0];
    _localizedNameKey = [(AKAuthorizationInputPaneViewController *)selfCopy _localizedNameKey];
    mainLabel = [v32[0] mainLabel];
    [mainLabel setText:_localizedNameKey];
    MEMORY[0x277D82BD8](mainLabel);
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    localizedName = [(AKAuthorizationScopeChoices *)editableScopeChoices localizedName];
    mainDetailLabel = [v32[0] mainDetailLabel];
    [mainDetailLabel setText:localizedName];
    MEMORY[0x277D82BD8](mainDetailLabel);
    MEMORY[0x277D82BD8](localizedName);
    v28 = [MEMORY[0x277D755B8] systemImageNamed:{@"person.fill", MEMORY[0x277D82BD8](editableScopeChoices).n128_f64[0]}];
    [v32[0] setScopeImage:?];
    v3 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  }

  else
  {
    _localizedNameKey2 = [(AKAuthorizationInputPaneViewController *)selfCopy _localizedNameKey];
    localizedUppercaseString = [_localizedNameKey2 localizedUppercaseString];
    scopeLabel2 = [v32[0] scopeLabel];
    [scopeLabel2 setText:localizedUppercaseString];
    MEMORY[0x277D82BD8](scopeLabel2);
    MEMORY[0x277D82BD8](localizedUppercaseString);
    editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    localizedName2 = [(AKAuthorizationScopeChoices *)editableScopeChoices2 localizedName];
    mainLabel2 = [v32[0] mainLabel];
    [mainLabel2 setText:localizedName2];
    MEMORY[0x277D82BD8](mainLabel2);
    MEMORY[0x277D82BD8](localizedName2);
    mainDetailLabel2 = [v32[0] mainDetailLabel];
    [mainDetailLabel2 setText:0];
    v3 = MEMORY[0x277D82BD8](mainDetailLabel2).n128_u64[0];
  }

  authorizationViewController = [(AKAuthorizationInputPaneViewController *)selfCopy authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  *&v4 = MEMORY[0x277D82BD8](authorizationViewController).n128_u64[0];
  if (_isManagedAppleID)
  {
    editableScopeChoices3 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    localizedName3 = [(AKAuthorizationScopeChoices *)editableScopeChoices3 localizedName];
    mainLabel3 = [v32[0] mainLabel];
    [mainLabel3 setText:localizedName3];
    MEMORY[0x277D82BD8](mainLabel3);
    MEMORY[0x277D82BD8](localizedName3);
    _nameCellDetailLabelTextForManagedAppleID = [(AKAuthorizationInputPaneViewController *)selfCopy _nameCellDetailLabelTextForManagedAppleID];
    mainDetailLabel3 = [v32[0] mainDetailLabel];
    [mainDetailLabel3 setText:_nameCellDetailLabelTextForManagedAppleID];
    MEMORY[0x277D82BD8](mainDetailLabel3);
    MEMORY[0x277D82BD8](_nameCellDetailLabelTextForManagedAppleID);
  }

  else
  {
    _clearButton = [(AKAuthorizationInputPaneViewController *)selfCopy _clearButton];
    [v32[0] setAccessoryView:?];
    MEMORY[0x277D82BD8](_clearButton);
  }

  v6 = MEMORY[0x277D82BE0](v32[0]);
  objc_storeStrong(v32, 0);

  return v6;
}

- (id)_emailCellForLocalRow:(int64_t)row
{
  v5 = 0;
  isTiburonU13Enabled = 0;
  if ([(AKAuthorizationInputPaneViewController *)self _isUnderageUser])
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    v5 = 1;
    isTiburonU13Enabled = [mEMORY[0x277CF0228] isTiburonU13Enabled];
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  }

  if (isTiburonU13Enabled)
  {
    goto LABEL_6;
  }

  if (row)
  {
    if (row == [(AKAuthorizationInputPaneViewController *)self _numberOfRowsInScope:*MEMORY[0x277CEFFE0]]- 1)
    {
LABEL_6:
      _hideMyEmailCell = [(AKAuthorizationInputPaneViewController *)self _hideMyEmailCell];
      goto LABEL_11;
    }

    _hideMyEmailCell = [(AKAuthorizationInputPaneViewController *)self _singleEmailCellForIndex:row - 1];
  }

  else
  {
    _hideMyEmailCell = [(AKAuthorizationInputPaneViewController *)self _shareMyEmailCell];
  }

LABEL_11:

  return _hideMyEmailCell;
}

- (id)_shareMyEmailCell
{
  selfCopy = self;
  v26[1] = a2;
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  v26[0] = [(UITableView *)tableView dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Summary"];
  [v26[0] setAccessibilityIdentifier:{0x2835918A8, MEMORY[0x277D82BD8](tableView).n128_f64[0]}];
  authorizationViewController = [(AKAuthorizationInputPaneViewController *)selfCopy authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  *&v2 = MEMORY[0x277D82BD8](authorizationViewController).n128_u64[0];
  if (_isManagedAppleID)
  {
    _defaultSharedEmail = [(AKAuthorizationInputPaneViewController *)selfCopy _defaultSharedEmail];
    mainLabel = [v26[0] mainLabel];
    [mainLabel setText:_defaultSharedEmail];
    MEMORY[0x277D82BD8](mainLabel);
    presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
    userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
    managedOrganizationName = [userInformation managedOrganizationName];
    mainDetailLabel = [v26[0] mainDetailLabel];
    [mainDetailLabel setText:managedOrganizationName];
    MEMORY[0x277D82BD8](mainDetailLabel);
    MEMORY[0x277D82BD8](managedOrganizationName);
    MEMORY[0x277D82BD8](userInformation);
    [v26[0] setCheckmarkStyle:{0, MEMORY[0x277D82BD8](presentationContext).n128_f64[0]}];
    v20 = [MEMORY[0x277D755B8] systemImageNamed:@"envelope.fill"];
    [v26[0] setScopeImage:?];
    v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"AUTHORIZE_SHARE_MY_EMAIL" value:&stru_28358EF68 table:@"Localizable"];
    mainLabel2 = [v26[0] mainLabel];
    [mainLabel2 setText:v7];
    MEMORY[0x277D82BD8](mainLabel2);
    MEMORY[0x277D82BD8](v7);
    _defaultSharedEmail2 = [(AKAuthorizationInputPaneViewController *)selfCopy _defaultSharedEmail];
    mainDetailLabel2 = [v26[0] mainDetailLabel];
    [mainDetailLabel2 setText:_defaultSharedEmail2];
    MEMORY[0x277D82BD8](mainDetailLabel2);
    [v26[0] setCheckmarkStyle:{2, MEMORY[0x277D82BD8](_defaultSharedEmail2).n128_f64[0]}];
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"envelope.fill"];
    [v26[0] setScopeImage:?];
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    v24 = 0;
    v13 = 0;
    if (![(AKAuthorizationScopeChoices *)editableScopeChoices wantsPrivateEmail])
    {
      editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
      v24 = 1;
      v13 = [(AKAuthorizationScopeChoices *)editableScopeChoices2 indexOfChosenEmail]!= 0x7FFFFFFFFFFFFFFFLL;
    }

    [v26[0] setChecked:v13];
    if (v24)
    {
      MEMORY[0x277D82BD8](editableScopeChoices2);
    }

    v3 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
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
  selfCopy = self;
  v21[1] = a2;
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  v21[0] = [(UITableView *)tableView dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Summary"];
  [v21[0] setAccessibilityIdentifier:{0x2835918C8, MEMORY[0x277D82BD8](tableView).n128_f64[0]}];
  +[AKAuthorizationPaneMetrics emailCellHeight];
  [v21[0] setMinimumHeight:?];
  scopeLabel = [v21[0] scopeLabel];
  [scopeLabel setText:?];
  [v21[0] setScopeImage:{0, MEMORY[0x277D82BD8](scopeLabel).n128_f64[0]}];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"AUTHORIZE_HIDE_MY_EMAIL" value:&stru_28358EF68 table:?];
  mainLabel = [v21[0] mainLabel];
  [mainLabel setText:v8];
  MEMORY[0x277D82BD8](mainLabel);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v16 localizedStringForKey:@"AUTHORIZE_FORWARD_TO_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
  editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
  forwardingEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices forwardingEmail];
  v12 = [v10 stringWithFormat:v15, forwardingEmail];
  mainDetailLabel = [v21[0] mainDetailLabel];
  [mainDetailLabel setText:v12];
  MEMORY[0x277D82BD8](mainDetailLabel);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](forwardingEmail);
  MEMORY[0x277D82BD8](editableScopeChoices);
  MEMORY[0x277D82BD8](v15);
  [v21[0] setCheckmarkStyle:{2, MEMORY[0x277D82BD8](v16).n128_f64[0]}];
  editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
  [v21[0] setChecked:{-[AKAuthorizationScopeChoices wantsPrivateEmail](editableScopeChoices2, "wantsPrivateEmail")}];
  [v21[0] _setSeparatorIndentToMainLabel];
  v19 = 0;
  isTiburonU13Enabled = 0;
  if ([(AKAuthorizationInputPaneViewController *)selfCopy _isUnderageUser])
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    v19 = 1;
    isTiburonU13Enabled = [mEMORY[0x277CF0228] isTiburonU13Enabled];
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  }

  if (isTiburonU13Enabled)
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"envelope.fill"];
    [v21[0] setScopeImage:?];
    MEMORY[0x277D82BD8](v4);
  }

  v3 = MEMORY[0x277D82BE0](v21[0]);
  objc_storeStrong(v21, 0);

  return v3;
}

- (id)_editingNameCellForRow:(unint64_t)row
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13 = a2;
  rowCopy = row;
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  v11 = [(UITableView *)tableView dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeEditTableViewCell-Name"];
  detailTextField = [(UITableViewCell *)v11 detailTextField];
  [detailTextField setDelegate:selfCopy];
  detailTextField2 = [(UITableViewCell *)v11 detailTextField];
  [detailTextField2 setTag:rowCopy];
  *&v3 = MEMORY[0x277D82BD8](detailTextField2).n128_u64[0];
  if (rowCopy == selfCopy->_editingGivenNameIndex)
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _setupGivenNameCell:v11, v3];
  }

  else if (rowCopy == selfCopy->_editingFamilyNameIndex)
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _setupFamilyNameCell:v11, v3];
  }

  else
  {
    location = _AKLogSiwa();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:rowCopy];
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

- (void)_setupGivenNameCell:(id)cell
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  v25 = +[AKAuthorizationScopeChoices localizedGivenNameLabel];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (!isLisbonAvailable)
  {
    localizedUppercaseString = [(NSString *)v25 localizedUppercaseString];
    v5 = v25;
    v25 = localizedUppercaseString;
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  v11 = v25;
  textLabel = [location[0] textLabel];
  [textLabel setText:v11];
  v14 = +[AKAuthorizationScopeChoices localizedGivenNameLabel];
  detailTextField = [location[0] detailTextField];
  [detailTextField setAccessibilityIdentifier:v14];
  MEMORY[0x277D82BD8](detailTextField);
  *&v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  editingUserInformation = [(AKAuthorizationInputPaneViewController *)selfCopy editingUserInformation];
  givenName = [(AKUserInformation *)editingUserInformation givenName];
  detailTextField2 = [location[0] detailTextField];
  [detailTextField2 setText:givenName];
  MEMORY[0x277D82BD8](detailTextField2);
  MEMORY[0x277D82BD8](givenName);
  *&v7 = MEMORY[0x277D82BD8](editingUserInformation).n128_u64[0];
  v18 = *MEMORY[0x277D76FD0];
  detailTextField3 = [location[0] detailTextField];
  [detailTextField3 setTextContentType:v18];
  *&v8 = MEMORY[0x277D82BD8](detailTextField3).n128_u64[0];
  detailTextField4 = [location[0] detailTextField];
  [detailTextField4 setReturnKeyType:4];
  *&v9 = MEMORY[0x277D82BD8](detailTextField4).n128_u64[0];
  detailTextField5 = [location[0] detailTextField];
  [detailTextField5 removeTarget:selfCopy action:? forControlEvents:?];
  *&v10 = MEMORY[0x277D82BD8](detailTextField5).n128_u64[0];
  detailTextField6 = [location[0] detailTextField];
  [detailTextField6 addTarget:selfCopy action:sel__setGivenNameFromTextField_ forControlEvents:0x20000];
  MEMORY[0x277D82BD8](detailTextField6);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupFamilyNameCell:(id)cell
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  v25 = +[AKAuthorizationScopeChoices localizedFamilyNameLabel];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (!isLisbonAvailable)
  {
    localizedUppercaseString = [(NSString *)v25 localizedUppercaseString];
    v5 = v25;
    v25 = localizedUppercaseString;
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  v11 = v25;
  textLabel = [location[0] textLabel];
  [textLabel setText:v11];
  v14 = +[AKAuthorizationScopeChoices localizedFamilyNameLabel];
  detailTextField = [location[0] detailTextField];
  [detailTextField setAccessibilityIdentifier:v14];
  MEMORY[0x277D82BD8](detailTextField);
  *&v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  editingUserInformation = [(AKAuthorizationInputPaneViewController *)selfCopy editingUserInformation];
  familyName = [(AKUserInformation *)editingUserInformation familyName];
  detailTextField2 = [location[0] detailTextField];
  [detailTextField2 setText:familyName];
  MEMORY[0x277D82BD8](detailTextField2);
  MEMORY[0x277D82BD8](familyName);
  *&v7 = MEMORY[0x277D82BD8](editingUserInformation).n128_u64[0];
  v18 = *MEMORY[0x277D76FC0];
  detailTextField3 = [location[0] detailTextField];
  [detailTextField3 setTextContentType:v18];
  *&v8 = MEMORY[0x277D82BD8](detailTextField3).n128_u64[0];
  detailTextField4 = [location[0] detailTextField];
  [detailTextField4 setReturnKeyType:9];
  *&v9 = MEMORY[0x277D82BD8](detailTextField4).n128_u64[0];
  detailTextField5 = [location[0] detailTextField];
  [detailTextField5 removeTarget:selfCopy action:? forControlEvents:?];
  *&v10 = MEMORY[0x277D82BD8](detailTextField5).n128_u64[0];
  detailTextField6 = [location[0] detailTextField];
  [detailTextField6 addTarget:selfCopy action:sel__setFamilyNameFromTextField_ forControlEvents:0x20000];
  MEMORY[0x277D82BD8](detailTextField6);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (id)_loginChoiceCellForRow:(unint64_t)row
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v29 = a2;
  rowCopy = row;
  presentationContext = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  loginChoices = [(AKAuthorizationPresentationContext *)presentationContext loginChoices];
  v18 = [loginChoices count];
  MEMORY[0x277D82BD8](loginChoices);
  *&v3 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  if (row >= v18)
  {
    location = _AKLogSiwa();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      presentationContext2 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
      loginChoices2 = [(AKAuthorizationPresentationContext *)presentationContext2 loginChoices];
      __os_log_helper_16_0_2_8_0_8_0(v32, rowCopy, [loginChoices2 count]);
      _os_log_error_impl(&dword_222379000, location, v26, "Cell row %ld >= %ld choices available.", v32, 0x16u);
      MEMORY[0x277D82BD8](loginChoices2);
      MEMORY[0x277D82BD8](presentationContext2);
    }

    objc_storeStrong(&location, 0);
    v31 = 0;
  }

  else
  {
    presentationContext3 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
    loginChoices3 = [(AKAuthorizationPresentationContext *)presentationContext3 loginChoices];
    v25 = [loginChoices3 objectAtIndex:rowCopy];
    MEMORY[0x277D82BD8](loginChoices3);
    MEMORY[0x277D82BD8](presentationContext3);
    v24 = [[AKAuthorizationLoginChoiceCell alloc] initWithLoginChoice:v25 reuseIdentifier:@"AKAuthorizationLoginChoiceCell"];
    if (![v25 isAppleIDAuthorization])
    {
      presentationContext4 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
      v10 = [AKIcon iconWithPresentationContext:?];
      automaskedImage = [(AKIcon *)v10 automaskedImage];
      [(AKAuthorizationLoginChoiceCell *)v24 setIconImage:?];
      MEMORY[0x277D82BD8](automaskedImage);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](presentationContext4);
    }

    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    v22 = 0;
    v20 = 0;
    v8 = 1;
    if ([(AKAuthorizationScopeChoices *)editableScopeChoices indexOfChosenLogin]!= rowCopy)
    {
      presentationContext5 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
      v22 = 1;
      loginChoices4 = [(AKAuthorizationPresentationContext *)presentationContext5 loginChoices];
      v20 = 1;
      v8 = [loginChoices4 count] == 1;
    }

    if (v20)
    {
      MEMORY[0x277D82BD8](loginChoices4);
    }

    if (v22)
    {
      MEMORY[0x277D82BD8](presentationContext5);
    }

    *&v4 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
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
  selfCopy = self;
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

- (unint64_t)_numberOfRowsInScope:(id)scope
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scope);
  if ([location[0] isEqualToString:*MEMORY[0x277CEFFE8]])
  {
    v18 = 1;
    v15 = 1;
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CEFFE0]])
  {
    authorizationViewController = [(AKAuthorizationInputPaneViewController *)selfCopy authorizationViewController];
    _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
    *&v3 = MEMORY[0x277D82BD8](authorizationViewController).n128_u64[0];
    if (_isManagedAppleID)
    {
      presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
      userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
      sharedEmailForManagedAppleID = [userInformation sharedEmailForManagedAppleID];
      v18 = [sharedEmailForManagedAppleID length] != 0;
      MEMORY[0x277D82BD8](sharedEmailForManagedAppleID);
      MEMORY[0x277D82BD8](userInformation);
      MEMORY[0x277D82BD8](presentationContext);
      v15 = 1;
    }

    else
    {
      v13 = 0;
      isTiburonU13Enabled = 0;
      if ([(AKAuthorizationInputPaneViewController *)selfCopy _isUnderageUser])
      {
        mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
        v13 = 1;
        isTiburonU13Enabled = [mEMORY[0x277CF0228] isTiburonU13Enabled];
      }

      if (v13)
      {
        MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
      }

      if (isTiburonU13Enabled)
      {
        v18 = 1;
        v15 = 1;
      }

      else
      {
        if ([(AKAuthorizationInputPaneViewController *)selfCopy isEmailExpanded])
        {
          editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
          v18 = [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount]+ 2;
          MEMORY[0x277D82BD8](editableScopeChoices);
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

- (id)_singleEmailCellForIndex:(int64_t)index
{
  selfCopy = self;
  v23 = a2;
  indexCopy = index;
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  v21 = [(UITableView *)tableView dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Single"];
  [(UITableViewCell *)v21 setAccessibilityIdentifier:0x2835918E8, MEMORY[0x277D82BD8](tableView).n128_f64[0]];
  +[AKAuthorizationPaneMetrics selectEmailCellHeight];
  [(UITableViewCell *)v21 setMinimumHeight:?];
  scopeLabel = [(UITableViewCell *)v21 scopeLabel];
  [scopeLabel setText:&stru_28358EF68];
  mainLabel = [(UITableViewCell *)v21 mainLabel];
  editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
  v11 = [(AKAuthorizationScopeChoices *)editableScopeChoices emailAtIndex:indexCopy];
  [mainLabel setText:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](editableScopeChoices);
  v15 = +[AKAuthorizationAppearance scopeSelectionTitleFont];
  mainLabel2 = [(UITableViewCell *)v21 mainLabel];
  [mainLabel2 setFont:v15];
  MEMORY[0x277D82BD8](mainLabel2);
  mainDetailLabel = [(UITableViewCell *)v21 mainDetailLabel];
  [mainDetailLabel setText:0];
  authorizationViewController = [(AKAuthorizationInputPaneViewController *)selfCopy authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  *&v3 = MEMORY[0x277D82BD8](authorizationViewController).n128_u64[0];
  if (_isManagedAppleID)
  {
    [(UITableViewCell *)v21 setCheckmarkStyle:0, v3];
  }

  else
  {
    [(UITableViewCell *)v21 setCheckmarkStyle:1, v3];
    editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    v19 = 0;
    v8 = 0;
    if (![(AKAuthorizationScopeChoices *)editableScopeChoices2 wantsPrivateEmail])
    {
      editableScopeChoices3 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
      v19 = 1;
      v8 = [(AKAuthorizationScopeChoices *)editableScopeChoices3 indexOfChosenEmail]== indexCopy;
    }

    [(UITableViewCell *)v21 setChecked:v8];
    if (v19)
    {
      MEMORY[0x277D82BD8](editableScopeChoices3);
    }

    MEMORY[0x277D82BD8](editableScopeChoices2);
  }

  [(UITableViewCell *)v21 _setSeparatorIndentToMainLabel];
  v6 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)_selectRow:(int64_t)row
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14 = a2;
  rowCopy = row;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_validatedScopes);
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
      v10 = [(AKAuthorizationInputPaneViewController *)selfCopy _numberOfRowsInScope:v12, v7];
      if (rowCopy < v10)
      {
        break;
      }

      rowCopy -= v10;
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

    [(AKAuthorizationInputPaneViewController *)selfCopy _selectScope:v12 localRow:rowCopy];
  }

LABEL_9:
  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (void)_selectScope:(id)scope localRow:(int64_t)row
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scope);
  rowCopy = row;
  if ([location[0] isEqualToString:*MEMORY[0x277CEFFE8]])
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _didSelectEditScope:*MEMORY[0x277CEFFE8] options:MEMORY[0x277CBEC10]];
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CEFFE0]])
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _selectEmailLocalRow:rowCopy];
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

- (void)_selectEmailLocalRow:(int64_t)row
{
  if (row)
  {
    if (row == [(AKAuthorizationInputPaneViewController *)self _numberOfRowsInScope:*MEMORY[0x277CEFFE0]]- 1)
    {
      [(AKAuthorizationInputPaneViewController *)self _selectHideMyEmail];
    }

    else
    {
      [(AKAuthorizationInputPaneViewController *)self _selectSingleEmailAtIndex:row - 1];
    }
  }

  else
  {
    [(AKAuthorizationInputPaneViewController *)self _selectShareMyEmail];
  }
}

- (void)_selectSingleEmailAtIndex:(int64_t)index
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14 = a2;
  indexCopy = index;
  v11 = 0;
  v9 = 1;
  if ((index & 0x8000000000000000) == 0)
  {
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    v11 = 1;
    v9 = indexCopy >= [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](editableScopeChoices);
  }

  if (v9)
  {
    location = _AKLogSiwa();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:indexCopy];
      v5 = MEMORY[0x277CCABB0];
      editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
      v6 = [v5 numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](editableScopeChoices2, "emailCount")}];
      __os_log_helper_16_2_2_8_64_8_64(v16, v8, v6);
      _os_log_error_impl(&dword_222379000, location, OS_LOG_TYPE_ERROR, "Select email at index %@ beyond count %@.", v16, 0x16u);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](editableScopeChoices2);
      MEMORY[0x277D82BD8](v8);
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    editableScopeChoices3 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    [(AKAuthorizationScopeChoices *)editableScopeChoices3 setWantsPrivateEmail:0];
    editableScopeChoices4 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    [(AKAuthorizationScopeChoices *)editableScopeChoices4 setIndexOfChosenEmail:indexCopy];
    [(AKAuthorizationInputPaneViewController *)selfCopy setEditableScopeChoicesChanged:1, MEMORY[0x277D82BD8](editableScopeChoices4).n128_f64[0]];
    [(AKAuthorizationInputPaneViewController *)selfCopy _enableOrDisableConfirmButton];
    [(AKAuthorizationInputPaneViewController *)selfCopy setEmailExpanded:0 animated:1];
  }

  *MEMORY[0x277D85DE8];
}

- (void)_selectLoginChoiceCell
{
  if (![(AKAuthorizationInputPaneViewController *)self _shouldPresentCreateFlow]&& ![(AKAuthorizationInputPaneViewController *)self _hasOneLoginChoice])
  {
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    indexOfChosenLogin = [(AKAuthorizationScopeChoices *)editableScopeChoices indexOfChosenLogin];
    *&v2 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
    if (indexOfChosenLogin != 0x7FFFFFFFFFFFFFFFLL)
    {
      tableView = [(AKAuthorizationPaneViewController *)self tableView];
      v3 = MEMORY[0x277CCAA70];
      editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      v4 = [v3 indexPathForRow:-[AKAuthorizationScopeChoices indexOfChosenLogin](editableScopeChoices2 inSection:{"indexOfChosenLogin"), 0}];
      [UITableView selectRowAtIndexPath:tableView animated:"selectRowAtIndexPath:animated:scrollPosition:" scrollPosition:?];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](editableScopeChoices2);
      MEMORY[0x277D82BD8](tableView);
    }
  }
}

- (void)setEmailExpanded:(BOOL)expanded animated:(BOOL)animated
{
  selfCopy = self;
  v15 = a2;
  expandedCopy = expanded;
  animatedCopy = animated;
  if (self->_isEmailExpanded != expanded)
  {
    selfCopy->_isEmailExpanded = expandedCopy;
    v5 = selfCopy;
    v4 = animatedCopy;
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __68__AKAuthorizationInputPaneViewController_setEmailExpanded_animated___block_invoke;
    v10 = &unk_2784A70A0;
    v11 = MEMORY[0x277D82BE0](selfCopy);
    v12 = expandedCopy;
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

- (void)_transitionToEditingNameAnimated:(BOOL)animated
{
  selfCopy = self;
  v13 = a2;
  animatedCopy = animated;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __75__AKAuthorizationInputPaneViewController__transitionToEditingNameAnimated___block_invoke;
  v10 = &unk_2784A70C8;
  v11 = MEMORY[0x277D82BE0](self);
  v5 = MEMORY[0x277D82BE0](selfCopy);
  [(AKAuthorizationInputPaneViewController *)self _reloadDataAnimated:animated heightChange:&v6 animation:?];
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

- (void)_transitionFromEditingNameAnimated:(BOOL)animated
{
  selfCopy = self;
  v13 = a2;
  animatedCopy = animated;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __77__AKAuthorizationInputPaneViewController__transitionFromEditingNameAnimated___block_invoke;
  v10 = &unk_2784A70C8;
  v11 = MEMORY[0x277D82BE0](self);
  v5 = MEMORY[0x277D82BE0](selfCopy);
  [(AKAuthorizationInputPaneViewController *)self _reloadDataAnimated:animated heightChange:&v6 animation:?];
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

- (void)_beginEditingRow:(unint64_t)row
{
  selfCopy = self;
  v6[2] = a2;
  v6[1] = row;
  v6[0] = [(AKAuthorizationInputPaneViewController *)self _textFieldForRow:row];
  [v6[0] becomeFirstResponder];
  view = [(AKAuthorizationInputPaneViewController *)selfCopy view];
  [view setNeedsLayout];
  *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  view2 = [(AKAuthorizationInputPaneViewController *)selfCopy view];
  [view2 layoutIfNeeded];
  MEMORY[0x277D82BD8](view2);
  objc_storeStrong(v6, 0);
}

- (id)_textFieldForRow:(unint64_t)row
{
  selfCopy = self;
  v8[2] = a2;
  v8[1] = row;
  v8[0] = [MEMORY[0x277CCAA70] indexPathForRow:row inSection:0];
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  v7 = [(UITableView *)tableView cellForRowAtIndexPath:v8[0]];
  *&v3 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  detailTextField = [(UITableViewCell *)v7 detailTextField];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return detailTextField;
}

- (void)_nameEditDone
{
  navigationController = [(AKAuthorizationInputPaneViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  MEMORY[0x277D82BD8](topViewController);
  *&v2 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (topViewController == self)
  {
    [(AKAuthorizationInputPaneViewController *)self setEditingName:0 animated:1, v2];
  }
}

- (void)_setGivenNameFromTextField:(id)field
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v8 = [(AKAuthorizationInputPaneViewController *)selfCopy _textFromTextField:location[0]];
  editingUserInformation = [(AKAuthorizationInputPaneViewController *)selfCopy editingUserInformation];
  givenName = [(AKUserInformation *)editingUserInformation givenName];
  v7 = [givenName isEqualToString:v8];
  MEMORY[0x277D82BD8](givenName);
  *&v3 = MEMORY[0x277D82BD8](editingUserInformation).n128_u64[0];
  if (!v7)
  {
    editingUserInformation2 = [(AKAuthorizationInputPaneViewController *)selfCopy editingUserInformation];
    [(AKUserInformation *)editingUserInformation2 setGivenName:v8];
    MEMORY[0x277D82BD8](editingUserInformation2);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_setFamilyNameFromTextField:(id)field
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v8 = [(AKAuthorizationInputPaneViewController *)selfCopy _textFromTextField:location[0]];
  editingUserInformation = [(AKAuthorizationInputPaneViewController *)selfCopy editingUserInformation];
  familyName = [(AKUserInformation *)editingUserInformation familyName];
  v7 = [familyName isEqualToString:v8];
  MEMORY[0x277D82BD8](familyName);
  *&v3 = MEMORY[0x277D82BD8](editingUserInformation).n128_u64[0];
  if (!v7)
  {
    editingUserInformation2 = [(AKAuthorizationInputPaneViewController *)selfCopy editingUserInformation];
    [(AKUserInformation *)editingUserInformation2 setFamilyName:v8];
    MEMORY[0x277D82BD8](editingUserInformation2);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_textFromTextField:(id)field
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  text = [location[0] text];
  objc_storeStrong(location, 0);

  return text;
}

- (BOOL)_getValidEditingGivenName:(id *)name familyName:(id *)familyName
{
  selfCopy = self;
  v15 = a2;
  nameCopy = name;
  familyNameCopy = familyName;
  editingUserInformation = [(AKAuthorizationInputPaneViewController *)self editingUserInformation];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  givenName = [editingUserInformation givenName];
  v10 = [givenName stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  familyName = [editingUserInformation familyName];
  location = [familyName stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  if ([v10 length] || objc_msgSend(location, "length"))
  {
    if (nameCopy)
    {
      v4 = v10;
      *nameCopy = v10;
    }

    if (familyNameCopy)
    {
      v5 = location;
      *familyNameCopy = location;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&whitespaceAndNewlineCharacterSet, 0);
  objc_storeStrong(&editingUserInformation, 0);
  return v17 & 1;
}

- (void)_updateDataSourceWithValidEditingName
{
  selfCopy = self;
  v26[1] = a2;
  if ([(AKAuthorizationInputPaneViewController *)self isEditingName])
  {
    v26[0] = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v12 = [(AKAuthorizationInputPaneViewController *)selfCopy _getValidEditingGivenName:&v24 familyName:&v23];
    objc_storeStrong(v26, v24);
    objc_storeStrong(&v25, v23);
    if (v12)
    {
      editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
      userInformation = [(AKAuthorizationScopeChoices *)editableScopeChoices userInformation];
      givenName = [(AKUserInformation *)userInformation givenName];
      v20 = 0;
      v18 = 0;
      v16 = 0;
      v11 = 1;
      if ([givenName isEqualToString:v26[0]])
      {
        editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
        v20 = 1;
        userInformation2 = [(AKAuthorizationScopeChoices *)editableScopeChoices2 userInformation];
        v18 = 1;
        familyName = [(AKUserInformation *)userInformation2 familyName];
        v16 = 1;
        v11 = [familyName isEqualToString:v25] == 0;
      }

      if (v16)
      {
        MEMORY[0x277D82BD8](familyName);
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](userInformation2);
      }

      if (v20)
      {
        MEMORY[0x277D82BD8](editableScopeChoices2);
      }

      MEMORY[0x277D82BD8](givenName);
      MEMORY[0x277D82BD8](userInformation);
      *&v2 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
      v22 = v11;
      [(AKCATiburonInputUIReporter *)selfCopy->_analyticsReport didModifyName:v11, v2];
      editableScopeChoices3 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
      [(AKAuthorizationScopeChoices *)editableScopeChoices3 setGivenName:v26[0] familyName:v25];
      *&v3 = MEMORY[0x277D82BD8](editableScopeChoices3).n128_u64[0];
      editableDataSources = [(AKAuthorizationPaneViewController *)selfCopy editableDataSources];
      [(AKAuthorizationEditableDataSources *)editableDataSources setEditableScopeChoicesChanged:1];
      MEMORY[0x277D82BD8](editableDataSources);
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
  selfCopy = self;
  location[1] = a2;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  *&v2 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  if (userInterfaceIdiom)
  {
    if (userInterfaceIdiom == 1)
    {
      [(AKAuthorizationInputPaneViewController *)selfCopy _padNameEditHeightChange];
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
    [(AKAuthorizationInputPaneViewController *)selfCopy _phoneNameEditHeightChange];
    return v3;
  }
}

- (double)_phoneNameEditHeightChange
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    MaxY = CGRectGetMaxY(v29);
    MEMORY[0x277D82BD8](mainScreen);
    [(AKAuthorizationInputPaneViewController *)self preferredContentSize];
    v19 = v3;
    navigationController = [(AKAuthorizationInputPaneViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v21 = v19 + CGRectGetHeight(v30);
    MEMORY[0x277D82BD8](navigationBar);
    MEMORY[0x277D82BD8](navigationController);
    return MaxY - v21;
  }

  else
  {
    [MEMORY[0x277D75658] sizeForInterfaceOrientation:{-[AKAuthorizationInputPaneViewController interfaceOrientation](self, "interfaceOrientation", v2)}];
    v9 = v4;
    +[AKAuthorizationPaneMetrics keyboardAccessoryViewHeight];
    v26 = v9 + v5;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v11 = CGRectGetMaxY(v31);
    MEMORY[0x277D82BD8](mainScreen2);
    [(AKAuthorizationInputPaneViewController *)self _mainSectionScreenMaxY];
    v24 = v6;
    tableView = [(AKAuthorizationPaneViewController *)self tableView];
    [(UITableView *)tableView contentOffset];
    v13 = v7;
    navigationController2 = [(AKAuthorizationInputPaneViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 frame];
    v25 = v24 + v13 + CGRectGetHeight(v32);
    MEMORY[0x277D82BD8](navigationBar2);
    MEMORY[0x277D82BD8](navigationController2);
    MEMORY[0x277D82BD8](tableView);
    return v26 - (v11 - v25);
  }
}

- (double)_padNameEditHeightChange
{
  selfCopy = self;
  v19 = a2;
  [(AKAuthorizationInputPaneViewController *)self _mainSectionScreenMaxY];
  v18 = v2;
  paneFooterStackView = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
  [(UIStackView *)paneFooterStackView bounds];
  v16 = v21;
  Height = CGRectGetHeight(v21);
  MEMORY[0x277D82BD8](paneFooterStackView);
  v17 = Height;
  v15 = v18 + Height;
  navigationController = [(AKAuthorizationInputPaneViewController *)selfCopy navigationController];
  view = [navigationController view];
  *&v3 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  v12 = view;
  [view bounds];
  [v12 convertRect:v4 toView:{v5, v6, v7}];
  v13 = v15 - CGRectGetMaxY(v22);
  objc_storeStrong(&view, 0);
  return v13;
}

- (double)_mainSectionScreenMaxY
{
  selfCopy = self;
  v13[1] = a2;
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  v13[0] = [(UITableView *)tableView tableHeaderView];
  *&v2 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  v9 = v13[0];
  [v13[0] bounds];
  [v9 convertRect:v3 toView:{v4, v5, v6}];
  MaxY = CGRectGetMaxY(v15);
  tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView2 rectForSection:0];
  Height = CGRectGetHeight(v16);
  MEMORY[0x277D82BD8](tableView2);
  objc_storeStrong(v13, 0);
  return MaxY + Height;
}

- (void)_reloadDataAnimated:(BOOL)animated heightChange:(id)change
{
  selfCopy = self;
  v6 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, change);
  [(AKAuthorizationInputPaneViewController *)selfCopy _reloadDataAnimated:animatedCopy heightChange:location animation:0 completion:?];
  objc_storeStrong(&location, 0);
}

- (void)_reloadDataAnimated:(BOOL)animated heightChange:(id)change animation:(id)animation
{
  selfCopy = self;
  v9 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, change);
  v6 = 0;
  objc_storeStrong(&v6, animation);
  [(AKAuthorizationInputPaneViewController *)selfCopy _reloadDataAnimated:animatedCopy heightChange:location animation:v6 completion:0];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

- (void)_reloadDataAnimated:(BOOL)animated heightChange:(id)change animation:(id)animation completion:(id)completion
{
  selfCopy = self;
  v46 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, change);
  v43 = 0;
  objc_storeStrong(&v43, animation);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v6 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable == 1)
  {
    tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    [(UITableView *)tableView reloadData];
    *&v7 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
    tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    numberOfSections = [(UITableView *)tableView2 numberOfSections];
    *&v8 = MEMORY[0x277D82BD8](tableView2).n128_u64[0];
    v41[3] = numberOfSections;
    v49 = 0;
    v48 = numberOfSections;
    v50 = 0;
    v51 = numberOfSections;
    v41[1] = 0;
    v41[2] = numberOfSections;
    v41[0] = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, numberOfSections, v8}];
    v9 = 100;
    if (!animatedCopy)
    {
      v9 = 5;
    }

    v40 = v9;
    tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    [(UITableView *)tableView3 reloadSections:v41[0] withRowAnimation:v40];
    MEMORY[0x277D82BD8](tableView3);
    objc_storeStrong(v41, 0);
  }

  else
  {
    v39 = [MEMORY[0x277CCAA78] indexSetWithIndex:{0, v6}];
    v10 = 100;
    if (!animatedCopy)
    {
      v10 = 5;
    }

    v38 = v10;
    tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    [(UITableView *)tableView4 reloadSections:v39 withRowAnimation:v38];
    MEMORY[0x277D82BD8](tableView4);
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
  if (!animatedCopy)
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
  v35 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)_updateLayoutForHeightChange:(double)change
{
  if (change != 0.0)
  {
    [(AKAuthorizationInputPaneViewController *)self preferredContentSize];
    view = [(AKAuthorizationInputPaneViewController *)self view];
    [view bounds];
    CGRectGetWidth(v8);
    CGSizeMake_6();
    [(AKAuthorizationInputPaneViewController *)self setPreferredContentSize:v3, v4];
    view2 = [(AKAuthorizationInputPaneViewController *)self view];
    [view2 layoutIfNeeded];
    MEMORY[0x277D82BD8](view2);
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
  selfCopy = self;
  v11 = a2;
  if ([(AKAuthorizationInputPaneViewController *)self _shouldOverrideIntrinsicContentHeight])
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy preferredContentSize];
    v10 = v2;
    return v3;
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = AKAuthorizationInputPaneViewController;
    [(AKAuthorizationPaneViewController *)&v8 intrinsicContentHeight];
    v9 = v4;
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
    if (isAuthKitSolariumFeatureEnabled)
    {
      return v9 + 20.0;
    }

    return v9;
  }
}

- (double)contentScrollOffset
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [MEMORY[0x277D75658] activeKeyboard];
  if ([location[0] isActive])
  {
    window = [location[0] window];
    [window frame];
    v33 = v38;
    Height = CGRectGetHeight(v38);
    [location[0] frame];
    v32 = v39;
    v15 = Height - CGRectGetHeight(v39);
    MEMORY[0x277D82BD8](window);
    v34 = v15;
    [location[0] frame];
    rect = v40;
    v31 = CGRectOffset(v40, 0.0, v15);
    window2 = [location[0] window];
    view = [(AKAuthorizationInputPaneViewController *)selfCopy view];
    [view frame];
    v25 = v2;
    v26 = v3;
    v27 = v4;
    v28 = v5;
    view2 = [(AKAuthorizationInputPaneViewController *)selfCopy view];
    [window2 convertRect:v25 fromView:{v26, v27, v28}];
    v29.origin.x = v6;
    v29.origin.y = v7;
    v29.size.width = v8;
    v29.size.height = v9;
    MEMORY[0x277D82BD8](view2);
    MEMORY[0x277D82BD8](view);
    MEMORY[0x277D82BD8](window2);
    MaxY = CGRectGetMaxY(v29);
    v24 = MaxY - CGRectGetMinY(v31);
    v20 = v24;
    v23.receiver = selfCopy;
    v23.super_class = AKAuthorizationInputPaneViewController;
    [(AKAuthorizationPaneViewController *)&v23 contentScrollOffset];
    v37 = CGFloatMax_0(v20, v10);
  }

  else
  {
    v21.receiver = selfCopy;
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
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    emailCount = [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
    *&v2 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
    if (emailCount <= 1)
    {
      tableView = [(AKAuthorizationPaneViewController *)self tableView];
      [(UITableView *)tableView reloadData];
      MEMORY[0x277D82BD8](tableView);
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
    tableView = [(AKAuthorizationPaneViewController *)self tableView];
    [(UITableView *)tableView reloadData];
    MEMORY[0x277D82BD8](tableView);
  }
}

- (void)_updateEditableScopeChoicesWithPrivateEmail:(BOOL)email
{
  if (!email)
  {
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    indexOfChosenEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices indexOfChosenEmail];
    *&v3 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
    if (indexOfChosenEmail == 0x7FFFFFFFFFFFFFFFLL)
    {
      editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      [(AKAuthorizationScopeChoices *)editableScopeChoices2 setIndexOfChosenEmail:0];
      MEMORY[0x277D82BD8](editableScopeChoices2);
    }
  }

  editableScopeChoices3 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  [(AKAuthorizationScopeChoices *)editableScopeChoices3 setWantsPrivateEmail:email];
  [(AKAuthorizationInputPaneViewController *)self setEditableScopeChoicesChanged:1, MEMORY[0x277D82BD8](editableScopeChoices3).n128_f64[0]];
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

- (void)_doneButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  [(AKAuthorizationInputPaneViewController *)selfCopy _nameEditDone];
  objc_storeStrong(location, 0);
}

- (void)_updatePaneTitleForEditing:(BOOL)editing
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    v7 = 0;
    if (editing)
    {
      _paneTitleString = [(AKAuthorizationInputPaneViewController *)self _paneTitleString];
      v7 = 1;
      v4 = _paneTitleString;
    }

    else
    {
      v4 = 0;
    }

    [(AKAuthorizationInputPaneViewController *)self setTitle:v4, v4];
    if (v7)
    {
      MEMORY[0x277D82BD8](_paneTitleString);
    }
  }
}

- (void)_didSelectEditScope:(id)scope options:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scope);
  v9 = 0;
  objc_storeStrong(&v9, options);
  paneDelegate = [(AKAuthorizationPaneViewController *)selfCopy paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = selfCopy;
    v5 = location[0];
    presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
    [paneDelegate authorizationPaneViewController:v4 pushEditScope:v5 presentationContext:? options:?];
    MEMORY[0x277D82BD8](presentationContext);
  }

  objc_storeStrong(&paneDelegate, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_setCancelButtonEnabled:(BOOL)enabled
{
  navigationItem = [(AKAuthorizationInputPaneViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabled];
  MEMORY[0x277D82BD8](rightBarButtonItem);
  MEMORY[0x277D82BD8](navigationItem);
}

- (void)_enableOrDisableConfirmButton
{
  isEditingName = [(AKAuthorizationInputPaneViewController *)self isEditingName];
  confirmButton = [(AKAuthorizationInputPaneViewController *)self confirmButton];
  view = [(AKAuthorizationSubPane *)confirmButton view];
  [(UIView *)view setHidden:isEditingName];
  MEMORY[0x277D82BD8](view);
  *&v2 = MEMORY[0x277D82BD8](confirmButton).n128_u64[0];
  if (!isEditingName)
  {
    _shouldAllowAuthorization = [(AKAuthorizationInputPaneViewController *)self _shouldAllowAuthorization];
    confirmButton2 = [(AKAuthorizationInputPaneViewController *)self confirmButton];
    [(AKAuthorizationSubPaneConfirmButton *)confirmButton2 enableAuthorizationCapability:_shouldAllowAuthorization];
    MEMORY[0x277D82BD8](confirmButton2);
  }
}

- (void)setEditingName:(BOOL)name shouldClear:(BOOL)clear animated:(BOOL)animated
{
  if (self->_isEditingName != name)
  {
    if (name)
    {
      editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      userInformation = [(AKAuthorizationScopeChoices *)editableScopeChoices userInformation];
      [(AKAuthorizationInputPaneViewController *)self setEditingUserInformation:?];
      MEMORY[0x277D82BD8](userInformation);
      editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      personNameComponentsOrder = [(AKAuthorizationScopeChoices *)editableScopeChoices2 personNameComponentsOrder];
      v5 = MEMORY[0x277D82BD8](editableScopeChoices2).n128_u64[0];
      if (personNameComponentsOrder)
      {
        if (personNameComponentsOrder == 1)
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

      if (clear)
      {
        editingUserInformation = [(AKAuthorizationInputPaneViewController *)self editingUserInformation];
        [(AKUserInformation *)editingUserInformation setGivenName:?];
        editingUserInformation2 = [(AKAuthorizationInputPaneViewController *)self editingUserInformation];
        [(AKUserInformation *)editingUserInformation2 setFamilyName:&stru_28358EF68];
        v5 = MEMORY[0x277D82BD8](editingUserInformation2).n128_u64[0];
      }

      self->_isEditingName = 1;
      [(AKAuthorizationInputPaneViewController *)self _transitionToEditingNameAnimated:animated, *&v5];
      [(AKAuthorizationInputPaneViewController *)self _beginEditing];
    }

    else
    {
      [(AKAuthorizationInputPaneViewController *)self _updateDataSourceWithValidEditingName];
      self->_isEditingName = 0;
      [(AKAuthorizationInputPaneViewController *)self _endEditing];
      [(AKAuthorizationInputPaneViewController *)self _transitionFromEditingNameAnimated:animated];
      objc_storeStrong(&self->_nameFormatter, 0);
    }

    [(AKAuthorizationInputPaneViewController *)self _enableOrDisableConfirmButton];
  }
}

- (void)_performAuthorizationWithRawPassword:(id)password
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, password);
  [(AKAuthorizationInputPaneViewController *)selfCopy _performAuthorizationWithRawPassword:location[0] completionHandler:0];
  objc_storeStrong(location, 0);
}

- (void)_performAuthorizationWithRawPassword:(id)password completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, password);
  v25 = 0;
  objc_storeStrong(&v25, handler);
  v10 = selfCopy;
  editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
  _selectedLoginChoice = [(AKAuthorizationInputPaneViewController *)selfCopy _selectedLoginChoice];
  [(AKAuthorizationInputPaneViewController *)v10 _prepareScopeChoices:editableScopeChoices withLoginChoice:?];
  MEMORY[0x277D82BD8](_selectedLoginChoice);
  *&v4 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
  editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
  userResponse = [(AKAuthorizationScopeChoices *)editableScopeChoices2 userResponse];
  *&v5 = MEMORY[0x277D82BD8](editableScopeChoices2).n128_u64[0];
  [userResponse setRawAccountPassword:{location[0], v5}];
  [(AKAuthorizationInputPaneViewController *)selfCopy _updateAnalyticsReport];
  v15 = selfCopy;
  v14 = userResponse;
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __97__AKAuthorizationInputPaneViewController__performAuthorizationWithRawPassword_completionHandler___block_invoke;
  v21 = &unk_2784A7140;
  v22 = MEMORY[0x277D82BE0](selfCopy);
  v23 = MEMORY[0x277D82BE0](v25);
  [(AKAuthorizationInputPaneViewController *)v15 _paneDelegate_didRequestAuthorizationWithUserProvidedInformation:v14 completion:&v17];
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    editableScopeChoices3 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    v8 = editableScopeChoices3;
    if (location[0])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v28, editableScopeChoices3, v7);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "AKAuthorizationInputPaneViewController: User requested authorization with scope choices: %@ \nContains password: %@", v28, 0x16u);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&userResponse, 0);
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
  selfCopy = self;
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
    [v7[0] performPasswordAuthenticationForPaneViewController:selfCopy];
  }

  objc_storeStrong(v7, 0);
}

- (void)_handleAuthorizationError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if ([location[0] ak_isAuthenticationErrorWithCode:-7081])
  {
    if ([(AKAuthorizationInputPaneViewController *)selfCopy _nameScopeAllowsAuthorization])
    {
      if (![(AKAuthorizationInputPaneViewController *)selfCopy _emailScopeAllowsAuthorization])
      {
        confirmButton = [(AKAuthorizationInputPaneViewController *)selfCopy confirmButton];
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v10 localizedStringForKey:@"BIO_BUTTON_SELECT_EMAIL" value:&stru_28358EF68 table:@"Localizable"];
        [(AKAuthorizationSubPaneConfirmButton *)confirmButton bioAuthFailWithAlertString:?];
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](confirmButton);
      }
    }

    else
    {
      confirmButton2 = [(AKAuthorizationInputPaneViewController *)selfCopy confirmButton];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v13 localizedStringForKey:@"BIO_BUTTON_ENTER_NAME" value:&stru_28358EF68 table:@"Localizable"];
      [(AKAuthorizationSubPaneConfirmButton *)confirmButton2 bioAuthFailWithAlertString:?];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](confirmButton2);
    }
  }

  else if ([location[0] ak_isAuthenticationErrorWithCode:-7082])
  {
    confirmButton3 = [(AKAuthorizationInputPaneViewController *)selfCopy confirmButton];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"BIO_BUTTON_SELECT_ACCOUNT" value:&stru_28358EF68 table:@"Localizable"];
    [(AKAuthorizationSubPaneConfirmButton *)confirmButton3 bioAuthFailWithAlertString:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](confirmButton3);
  }

  else
  {
    v5 = 1;
    if ([location[0] code] != -7006)
    {
      v5 = [location[0] code] == -7075;
    }

    confirmButton4 = [(AKAuthorizationInputPaneViewController *)selfCopy confirmButton];
    [(AKAuthorizationSubPaneConfirmButton *)confirmButton4 showAlertAndContinueWithPassword:v5];
    *&v3 = MEMORY[0x277D82BD8](confirmButton4).n128_u64[0];
    [(AKAuthorizationInputPaneViewController *)selfCopy _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_prepareScopeChoices:(id)choices withLoginChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choices);
  v34 = 0;
  objc_storeStrong(&v34, choice);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isSiwaCredentialSharingEnabled = [mEMORY[0x277CF0228] isSiwaCredentialSharingEnabled];
  *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isSiwaCredentialSharingEnabled)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = MEMORY[0x277D82BE0](v34);
      sharedAccount = [v33 sharedAccount];
      presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
      credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
      authorizationRequest = [credentialRequestContext authorizationRequest];
      [authorizationRequest set_sharedAccount:sharedAccount];
      MEMORY[0x277D82BD8](authorizationRequest);
      MEMORY[0x277D82BD8](credentialRequestContext);
      MEMORY[0x277D82BD8](presentationContext);
      MEMORY[0x277D82BD8](sharedAccount);
      objc_storeStrong(&v33, 0);
    }
  }

  presentationContext2 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  credentialRequestContext2 = [(AKAuthorizationPresentationContext *)presentationContext2 credentialRequestContext];
  authorizationRequest2 = [credentialRequestContext2 authorizationRequest];
  MEMORY[0x277D82BD8](credentialRequestContext2);
  *&v5 = MEMORY[0x277D82BD8](presentationContext2).n128_u64[0];
  [location[0] setLoginChoice:{v34, v5}];
  if (v34 && ([v34 isAppleIDAuthorization] & 1) == 0)
  {
    if (authorizationRequest2)
    {
      presentationContext3 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
      loginChoices = [(AKAuthorizationPresentationContext *)presentationContext3 loginChoices];
      v23 = MEMORY[0x277D85DD0];
      v24 = -1073741824;
      v25 = 0;
      v26 = __79__AKAuthorizationInputPaneViewController__prepareScopeChoices_withLoginChoice___block_invoke;
      v27 = &unk_2784A7168;
      v28 = MEMORY[0x277D82BE0](location[0]);
      [loginChoices enumerateObjectsUsingBlock:&v23];
      MEMORY[0x277D82BD8](loginChoices);
      MEMORY[0x277D82BD8](presentationContext3);
      objc_storeStrong(&v28, 0);
    }

    v6 = location[0];
    presentationContext4 = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
    credentialRequestContext3 = [(AKAuthorizationPresentationContext *)presentationContext4 credentialRequestContext];
    passwordRequest = [credentialRequestContext3 passwordRequest];
    [v6 setSelectedRequest:?];
    MEMORY[0x277D82BD8](passwordRequest);
    MEMORY[0x277D82BD8](credentialRequestContext3);
    MEMORY[0x277D82BD8](presentationContext4);
  }

  else if (authorizationRequest2)
  {
    [location[0] setSelectedRequest:authorizationRequest2];
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

  objc_storeStrong(&authorizationRequest2, 0);
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
  editableScopeChoices = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  [(AKCATiburonInputUIReporter *)analyticsReport didSelectAnonymousEmail:[(AKAuthorizationScopeChoices *)editableScopeChoices wantsPrivateEmail]];
  MEMORY[0x277D82BD8](editableScopeChoices);
}

- (void)subPaneConfirmButtonDidEnterProcessingState:(id)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
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
  if ([(AKAuthorizationInputPaneViewController *)selfCopy _shouldAllowAuthorization])
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _setCancelButtonEnabled:0];
    [(AKAuthorizationInputPaneViewController *)selfCopy _updateDataSourceWithValidEditingName];
    objc_initWeak(&v29, selfCopy);
    v12 = selfCopy;
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
    if ([(AKAuthorizationInputPaneViewController *)selfCopy _shouldPresentCreateFlow])
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
    [(AKAuthorizationInputPaneViewController *)selfCopy _handleAuthorizationError:v21];
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

- (void)subpaneConfirmButtonDidFailBiometry:(id)biometry
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, biometry);
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
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationInputPaneViewController *)self _selectedLoginChoice];
  if (!location[0] || [location[0] isAppleIDAuthorization])
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _performPasswordAuthentication];
  }

  else
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _performAuthorizationWithRawPassword:0];
  }

  objc_storeStrong(location, 0);
}

- (void)subPaneConfirmButtonPerformExternalAuthentication:(id)authentication
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authentication);
  v18 = _AKLogSiwa();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    editableScopeChoices = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
    __os_log_helper_16_2_1_8_64(v21, editableScopeChoices);
    _os_log_impl(&dword_222379000, v18, v17, "AKAuthorizationInputPaneViewController: Did continue -  User requested authorization with scope choices: %@", v21, 0xCu);
    MEMORY[0x277D82BD8](editableScopeChoices);
  }

  objc_storeStrong(&v18, 0);
  v4 = selfCopy;
  editableScopeChoices2 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
  _selectedLoginChoice = [(AKAuthorizationInputPaneViewController *)selfCopy _selectedLoginChoice];
  [(AKAuthorizationInputPaneViewController *)v4 _prepareScopeChoices:editableScopeChoices2 withLoginChoice:?];
  MEMORY[0x277D82BD8](_selectedLoginChoice);
  *&v3 = MEMORY[0x277D82BD8](editableScopeChoices2).n128_u64[0];
  v7 = selfCopy;
  editableScopeChoices3 = [(AKAuthorizationInputPaneViewController *)selfCopy editableScopeChoices];
  userResponse = [(AKAuthorizationScopeChoices *)editableScopeChoices3 userResponse];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __92__AKAuthorizationInputPaneViewController_subPaneConfirmButtonPerformExternalAuthentication___block_invoke;
  v15 = &unk_2784A6448;
  v16 = MEMORY[0x277D82BE0](selfCopy);
  [(AKAuthorizationInputPaneViewController *)v7 _paneDelegate_didRequestAuthorizationWithUserProvidedInformation:userResponse completion:&v11];
  MEMORY[0x277D82BD8](userResponse);
  MEMORY[0x277D82BD8](editableScopeChoices3);
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
  selfCopy = self;
  location[1] = a2;
  if ([(AKAuthorizationInputPaneViewController *)self _shouldAllowAuthorization])
  {
    [(AKAuthorizationInputPaneViewController *)selfCopy _updateDataSourceWithValidEditingName];
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

- (void)subPaneConfirmButtonPerformAccountCreation:(id)creation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, creation);
  authorizationViewController = [(AKAuthorizationInputPaneViewController *)selfCopy authorizationViewController];
  v5 = MEMORY[0x277CF01A8];
  presentationContext = [(AKAuthorizationInputPaneViewController *)selfCopy presentationContext];
  v8 = [v5 presentationContextForCreateAppleIDFlow:?];
  *&v3 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  credentialRequestContext = [v8 credentialRequestContext];
  [credentialRequestContext setPasswordRequest:0];
  *&v4 = MEMORY[0x277D82BD8](credentialRequestContext).n128_u64[0];
  [(AKAuthorizationViewController *)authorizationViewController setPresentationContext:v8, v4];
  [(AKAuthorizationViewController *)authorizationViewController presentInputPaneViewController];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&authorizationViewController, 0);
  objc_storeStrong(location, 0);
}

- (void)passwordAuthenticationCompletedWithResults:(id)results error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v9 = 0;
  objc_storeStrong(&v9, error);
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
    [(AKAuthorizationInputPaneViewController *)selfCopy _performAuthorizationWithRawPassword:v8];
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v6 = 0;
  objc_storeStrong(&v6, error);
  paneDelegate = [(AKAuthorizationPaneViewController *)selfCopy paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [paneDelegate authorizationPaneViewController:selfCopy dismissWithAuthorization:location[0] error:v6];
  }

  objc_storeStrong(&paneDelegate, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_paneDelegate_didRequestAuthorizationWithUserProvidedInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  paneDelegate = [(AKAuthorizationPaneViewController *)selfCopy paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [paneDelegate authorizationPaneViewController:selfCopy didRequestAuthorizationWithUserProvidedInformation:location[0] completion:v6];
  }

  objc_storeStrong(&paneDelegate, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (AKAuthorizationViewController)authorizationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationViewController);

  return WeakRetained;
}

@end