@interface FPUIAuthenticationLandingViewController
- (BOOL)_canMoveToNextStep;
- (BOOL)textFieldShouldReturn:(id)return;
- (FPUIAuthenticationLandingViewController)initWithURL:(id)l;
- (id)defaultRightBarButtonItem;
- (void)_connect:(id)_connect;
- (void)_connectToServer:(id)server;
- (void)_disectURLToComponents:(id)components;
- (void)_showRecentServersSectionWithRecentServers:(id)servers rowAnimation:(int64_t)animation;
- (void)_transitionUIStateToConnecting;
- (void)_updateNextStep;
- (void)_updateRecentServerSectionVisibilityWithRowAnimation:(int64_t)animation forceReload:(BOOL)reload;
- (void)authenticationDelegate:(id)delegate didEncounterError:(id)error;
- (void)removeServerWithRepresentation:(id)representation;
- (void)setInitialConnectionURL:(id)l;
- (void)setupTableViewSections;
- (void)viewDidLoad;
@end

@implementation FPUIAuthenticationLandingViewController

- (FPUIAuthenticationLandingViewController)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = FPUIAuthenticationLandingViewController;
  v5 = [(FPUIAuthenticationTableViewController *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    initialURL = v5->_initialURL;
    v5->_initialURL = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = FPUIAuthenticationLandingViewController;
  [(FPUIAuthenticationTableViewController *)&v8 viewDidLoad];
  [(FPUIAuthenticationLandingViewController *)self _disectURLToComponents:self->_initialURL];
  absoluteString = [(NSURL *)self->_sanitizedURL absoluteString];
  [(UITextField *)self->_serverInputTextField setText:absoluteString];

  [(FPUIAuthenticationLandingViewController *)self _updateNextStep];
  v4 = objc_opt_self();
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [(FPUIAuthenticationLandingViewController *)self registerForTraitChanges:v5 withHandler:&__block_literal_global_4];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)defaultRightBarButtonItem
{
  v9 = FPUILoc(@"CONNECT", a2, v2, v3, v4, v5, v6, v7, v12);
  v10 = FPNavBarButton(v9, 0, self, sel__connect_);

  return v10;
}

- (void)setupTableViewSections
{
  v32[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setCellReuseIdentifier:@"ServerAddressCellReuseIdentifier"];
  [v4 setCellClass:objc_opt_class()];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __65__FPUIAuthenticationLandingViewController_setupTableViewSections__block_invoke;
  v28[3] = &unk_278A51590;
  v28[4] = self;
  [v4 setCellCustomizationHandler:v28];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __65__FPUIAuthenticationLandingViewController_setupTableViewSections__block_invoke_2;
  v27[3] = &unk_278A51520;
  v27[4] = self;
  [v4 setSelectionHandler:v27];
  v5 = objc_opt_new();
  recentServersSection = self->_recentServersSection;
  self->_recentServersSection = v5;

  [(FPUIAuthenticationSectionDescriptor *)self->_recentServersSection setHeaderHeight:*MEMORY[0x277D76F30]];
  v14 = FPUILoc(@"RECENT_SERVERS", v7, v8, v9, v10, v11, v12, v13, v26[0]);
  [(FPUIAuthenticationSectionDescriptor *)self->_recentServersSection setHeaderTitle:v14];

  [(FPUIAuthenticationSectionDescriptor *)self->_recentServersSection setActive:0];
  v15 = MEMORY[0x277CBEBF8];
  v16 = [MEMORY[0x277CBEBF8] mutableCopy];
  recentServersRowDescriptors = self->_recentServersRowDescriptors;
  self->_recentServersRowDescriptors = v16;

  v18 = objc_opt_new();
  recentServersExtraTopPaddingSection = self->_recentServersExtraTopPaddingSection;
  self->_recentServersExtraTopPaddingSection = v18;

  [(FPUIAuthenticationSectionDescriptor *)self->_recentServersExtraTopPaddingSection setHeaderHeight:12.0];
  [(FPUIAuthenticationSectionDescriptor *)self->_recentServersExtraTopPaddingSection setHeaderTitle:&stru_284B1A950];
  [(FPUIAuthenticationSectionDescriptor *)self->_recentServersExtraTopPaddingSection setActive:0];
  v20 = self->_recentServersExtraTopPaddingSection;
  v32[0] = v3;
  v32[1] = v20;
  v32[2] = self->_recentServersSection;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  [(FPUIAuthenticationTableViewController *)self setSectionDescriptors:v21];

  v29 = v4;
  v30[0] = &unk_284B1D650;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v31[0] = v22;
  v31[1] = v15;
  v30[1] = &unk_284B1D668;
  v30[2] = &unk_284B1D680;
  v31[2] = self->_recentServersRowDescriptors;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  [(FPUIAuthenticationTableViewController *)self setRowDescriptors:v23];

  authenticationDelegate = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__FPUIAuthenticationLandingViewController_setupTableViewSections__block_invoke_42;
  v26[3] = &unk_278A515B8;
  v26[4] = self;
  [authenticationDelegate recentServerRepresentationsWithCompletionHandler:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __65__FPUIAuthenticationLandingViewController_setupTableViewSections__block_invoke(uint64_t a1, void *a2)
{
  v29 = a2;
  v10 = FPUILoc(@"SERVER", v3, v4, v5, v6, v7, v8, v9, v27);
  v11 = [v29 label];
  [v11 setText:v10];

  v12 = [v29 textField];
  v13 = *(a1 + 32);
  v14 = *(v13 + 1096);
  *(v13 + 1096) = v12;

  [*(*(a1 + 32) + 1096) setAutocapitalizationType:0];
  [*(*(a1 + 32) + 1096) setAutocorrectionType:1];
  [*(*(a1 + 32) + 1096) setKeyboardType:3];
  [*(*(a1 + 32) + 1096) setDelegate:?];
  [*(*(a1 + 32) + 1096) addTarget:*(a1 + 32) action:sel_textFieldDidChange_ forControlEvents:0x20000];
  v22 = FPUILoc(@"SERVER_ADDRESS_ACCESSIBILITY_LABEL", v15, v16, v17, v18, v19, v20, v21, v28);
  [*(*(a1 + 32) + 1096) setAccessibilityLabel:v22];

  [*(*(a1 + 32) + 1096) setAccessibilityIdentifier:@"ServerAddressTextField"];
  v23 = [*(a1 + 32) authenticationDelegate];
  LOBYTE(v11) = objc_opt_respondsToSelector();

  if (v11)
  {
    v24 = [*(a1 + 32) authenticationDelegate];
    v25 = [v24 serverAddressPlaceholder];
    v26 = [v29 textField];
    [v26 setPlaceholder:v25];
  }
}

void __65__FPUIAuthenticationLandingViewController_setupTableViewSections__block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__FPUIAuthenticationLandingViewController_setupTableViewSections__block_invoke_2_43;
  v5[3] = &unk_278A512D0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __65__FPUIAuthenticationLandingViewController_setupTableViewSections__block_invoke_2_43(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1128), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[141];

  return [v2 _showRecentServersSectionWithRecentServers:v3 rowAnimation:3];
}

- (void)_showRecentServersSectionWithRecentServers:(id)servers rowAnimation:(int64_t)animation
{
  v24 = *MEMORY[0x277D85DE8];
  serversCopy = servers;
  [(NSMutableArray *)self->_recentServersRowDescriptors removeAllObjects];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = serversCopy;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_opt_new();
        objc_initWeak(&location, self);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __99__FPUIAuthenticationLandingViewController__showRecentServersSectionWithRecentServers_rowAnimation___block_invoke;
        v16[3] = &unk_278A515E0;
        v16[4] = v9;
        objc_copyWeak(&v17, &location);
        [v10 setCellCustomizationHandler:v16];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __99__FPUIAuthenticationLandingViewController__showRecentServersSectionWithRecentServers_rowAnimation___block_invoke_2;
        v15[3] = &unk_278A51608;
        v15[4] = v9;
        v15[5] = self;
        [v10 setAccessoryButtonTapHandler:v15];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __99__FPUIAuthenticationLandingViewController__showRecentServersSectionWithRecentServers_rowAnimation___block_invoke_3;
        v14[3] = &unk_278A51608;
        v14[4] = self;
        v14[5] = v9;
        [v10 setSelectionHandler:v14];
        [v10 setCellSelectionStyle:2];
        [(NSMutableArray *)self->_recentServersRowDescriptors addObject:v10];
        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [(FPUIAuthenticationLandingViewController *)self _updateRecentServerSectionVisibilityWithRowAnimation:animation forceReload:1];
  v11 = *MEMORY[0x277D85DE8];
}

void __99__FPUIAuthenticationLandingViewController__showRecentServersSectionWithRecentServers_rowAnimation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 displayName];
  v6 = [v4 textLabel];
  [v6 setText:v5];

  [v4 setAccessoryType:4];
  v7 = FPUITableCellServerIcon();
  v8 = [v4 imageView];
  [v8 setImage:v7];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained tableView];
  [v9 layoutMargins];
  [v4 setLayoutMargins:?];
}

void __99__FPUIAuthenticationLandingViewController__showRecentServersSectionWithRecentServers_rowAnimation___block_invoke_2(uint64_t a1)
{
  v4 = [[FPUIAuthenticationServerInfoViewController alloc] initWithServerRepresentation:*(a1 + 32)];
  v2 = [*(a1 + 40) authenticationDelegate];
  [(FPUIAuthenticationTableViewController *)v4 setAuthenticationDelegate:v2];

  [(FPUIAuthenticationServerInfoViewController *)v4 setServerInfoDelegate:*(a1 + 40)];
  v3 = [*(a1 + 40) navigationController];
  [v3 pushViewController:v4 animated:1];
}

- (void)_updateRecentServerSectionVisibilityWithRowAnimation:(int64_t)animation forceReload:(BOOL)reload
{
  reloadCopy = reload;
  v7 = [(NSMutableArray *)self->_recentServersRowDescriptors count];
  if (v7)
  {
    traitCollection = [(FPUIAuthenticationLandingViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v10 = !UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  }

  else
  {
    v10 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if ((v7 != 0) != [(FPUIAuthenticationSectionDescriptor *)self->_recentServersSection isActive])
  {
    [(FPUIAuthenticationSectionDescriptor *)self->_recentServersSection setActive:v7 != 0];
    sectionDescriptors = [(FPUIAuthenticationTableViewController *)self sectionDescriptors];
    [v15 addIndex:{objc_msgSend(sectionDescriptors, "indexOfObject:", self->_recentServersSection)}];
  }

  if (reloadCopy)
  {
    sectionDescriptors2 = [(FPUIAuthenticationTableViewController *)self sectionDescriptors];
    [v15 addIndex:{objc_msgSend(sectionDescriptors2, "indexOfObject:", self->_recentServersSection)}];
  }

  if (v10 != [(FPUIAuthenticationSectionDescriptor *)self->_recentServersExtraTopPaddingSection isActive])
  {
    [(FPUIAuthenticationSectionDescriptor *)self->_recentServersExtraTopPaddingSection setActive:v10];
    sectionDescriptors3 = [(FPUIAuthenticationTableViewController *)self sectionDescriptors];
    [v15 addIndex:{objc_msgSend(sectionDescriptors3, "indexOfObject:", self->_recentServersExtraTopPaddingSection)}];
  }

  if ([v15 count])
  {
    tableView = [(FPUIAuthenticationLandingViewController *)self tableView];
    [tableView reloadSections:v15 withRowAnimation:animation];
  }
}

- (void)authenticationDelegate:(id)delegate didEncounterError:(id)error
{
  errorCopy = error;
  delegateCopy = delegate;
  defaultTitle = [objc_opt_class() defaultTitle];
  [(FPUIAuthenticationTableViewController *)self setTitle:defaultTitle];

  v9.receiver = self;
  v9.super_class = FPUIAuthenticationLandingViewController;
  [(FPUIAuthenticationTableViewController *)&v9 authenticationDelegate:delegateCopy didEncounterError:errorCopy];
}

- (void)_transitionUIStateToConnecting
{
  v9 = FPUILoc(@"CONNECTING", a2, v2, v3, v4, v5, v6, v7, v10);
  [(FPUIAuthenticationTableViewController *)self setTitle:v9];

  [(FPUIAuthenticationTableViewController *)self setNavBarActivityIndicatorHidden:0];

  [(FPUIAuthenticationTableViewController *)self setTransitioning:1];
}

- (void)_updateNextStep
{
  _canMoveToNextStep = [(FPUIAuthenticationLandingViewController *)self _canMoveToNextStep];

  [(FPUIAuthenticationTableViewController *)self setCanTransitionToNextStep:_canMoveToNextStep];
}

- (void)setInitialConnectionURL:(id)l
{
  lCopy = l;
  if (self->_initialURL != lCopy)
  {
    v7 = lCopy;
    objc_storeStrong(&self->_initialURL, l);
    [(FPUIAuthenticationLandingViewController *)self _disectURLToComponents:self->_initialURL];
    absoluteString = [(NSURL *)self->_sanitizedURL absoluteString];
    [(UITextField *)self->_serverInputTextField setText:absoluteString];

    [(FPUIAuthenticationLandingViewController *)self _updateNextStep];
    lCopy = v7;
  }
}

- (void)_disectURLToComponents:(id)components
{
  if (components)
  {
    v10 = [MEMORY[0x277CCACE0] componentsWithURL:components resolvingAgainstBaseURL:0];
    user = [v10 user];
    v5 = [user copy];
    initialUsername = self->_initialUsername;
    self->_initialUsername = v5;

    [v10 setPassword:0];
    v7 = [v10 URL];
    v8 = [v7 copy];
    sanitizedURL = self->_sanitizedURL;
    self->_sanitizedURL = v8;
  }
}

- (void)_connect:(id)_connect
{
  [(FPUIAuthenticationLandingViewController *)self _transitionUIStateToConnecting];
  text = [(UITextField *)self->_serverInputTextField text];
  v6 = [text length];

  if (!v6)
  {
    [(FPUIAuthenticationLandingViewController *)a2 _connect:?];
  }

  authenticationDelegate = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  text2 = [(UITextField *)self->_serverInputTextField text];
  [authenticationDelegate connectToServerAtAddress:text2 connectionFlowDelegate:self];
}

- (void)_connectToServer:(id)server
{
  serverCopy = server;
  [(FPUIAuthenticationLandingViewController *)self _transitionUIStateToConnecting];
  authenticationDelegate = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  v5 = [serverCopy url];

  absoluteString = [v5 absoluteString];
  [authenticationDelegate connectToServerAtAddress:absoluteString connectionFlowDelegate:self];
}

- (BOOL)_canMoveToNextStep
{
  text = [(UITextField *)self->_serverInputTextField text];
  v3 = [text length] != 0;

  return v3;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  _canMoveToNextStep = [(FPUIAuthenticationLandingViewController *)self _canMoveToNextStep];
  if (_canMoveToNextStep)
  {
    [(FPUIAuthenticationLandingViewController *)self _connect:self];
  }

  return !_canMoveToNextStep;
}

- (void)removeServerWithRepresentation:(id)representation
{
  v25 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_recentServers, "count") - 1}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v18 = 1128;
  selfCopy = self;
  v6 = self->_recentServers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        identifier = [v11 identifier];
        identifier2 = [representationCopy identifier];
        v14 = [identifier isEqualToString:identifier2];

        if ((v14 & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = *(&selfCopy->super.super.super.super.super.isa + v18);
  *(&selfCopy->super.super.super.super.super.isa + v18) = v5;
  v16 = v5;

  [(FPUIAuthenticationLandingViewController *)selfCopy _showRecentServersSectionWithRecentServers:*(&selfCopy->super.super.super.super.super.isa + v18) rowAnimation:5];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_connect:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPUIAuthenticationLandingViewController.m" lineNumber:261 description:@"connecting to server with empty address text"];
}

@end