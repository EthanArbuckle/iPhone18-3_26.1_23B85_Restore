@interface MCBrowserViewController
- (BOOL)isVisible;
- (BOOL)maximumNumberOfPeersReached;
- (BOOL)minimumNumberOfPeersReached;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (MCBrowserViewController)initWithBrowser:(MCNearbyServiceBrowser *)browser session:(MCSession *)session;
- (MCBrowserViewController)initWithCoder:(id)a3;
- (MCBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MCBrowserViewController)initWithServiceType:(NSString *)serviceType session:(MCSession *)session;
- (NSString)description;
- (id)detailStringForPeerState:(int)a3;
- (id)nearbySectionTitle;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)applicationDidEnterBackgroundNotification:(id)a3;
- (void)applicationWillEnterForegroundNotification:(id)a3;
- (void)browser:(id)a3 foundPeer:(id)a4 withDiscoveryInfo:(id)a5;
- (void)browser:(id)a3 lostPeer:(id)a4;
- (void)cancelTapped:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)doneTapped:(id)a3;
- (void)handleViewDidDisappear;
- (void)handleViewWillAppear;
- (void)peer:(id)a3 changedStateTo:(int)a4;
- (void)peerJoinedSession;
- (void)session:(id)a3 didFinishReceivingResourceWithName:(id)a4 fromPeer:(id)a5 atURL:(id)a6 withError:(id)a7 propagate:(BOOL *)a8;
- (void)session:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5 propagate:(BOOL *)a6;
- (void)session:(id)a3 didReceiveStream:(id)a4 withName:(id)a5 fromPeer:(id)a6 propagate:(BOOL *)a7;
- (void)session:(id)a3 didStartReceivingResourceWithName:(id)a4 fromPeer:(id)a5 withProgress:(id)a6 propagate:(BOOL *)a7;
- (void)session:(id)a3 peer:(id)a4 didChangeState:(int64_t)a5 propagate:(BOOL *)a6;
- (void)setMaximumNumberOfPeers:(NSUInteger)maximumNumberOfPeers;
- (void)setMinimumNumberOfPeers:(NSUInteger)minimumNumberOfPeers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)verifyPeerIsAccountedFor:(id)a3;
- (void)viewDidLoad;
@end

@implementation MCBrowserViewController

- (MCBrowserViewController)initWithBrowser:(MCNearbyServiceBrowser *)browser session:(MCSession *)session
{
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18.receiver = self;
  v18.super_class = MCBrowserViewController;
  v8 = [(MCBrowserViewController *)&v18 initWithNibName:@"MCBrowserViewController" bundle:v7];
  if (!v8)
  {
    return v8;
  }

  if (!browser)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE660];
    v14 = objc_opt_class();
    [v12 raise:v13 format:{@"A nil MCNearbyServiceBrowser object passed to %@", NSStringFromClass(v14)}];
    if (session)
    {
      goto LABEL_4;
    }

LABEL_12:
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE660];
    v17 = objc_opt_class();
    [v15 raise:v16 format:{@"A nil MCSession object passed to %@", NSStringFromClass(v17)}];
    goto LABEL_4;
  }

  if (!session)
  {
    goto LABEL_12;
  }

LABEL_4:
  v8->_frameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [MEMORY[0x277D75418] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v9 = 2 * ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1);
  }

  else
  {
    v9 = 0;
  }

  [(MCBrowserViewController *)v8 setModalPresentationStyle:v9];
  v8->_myPeerID = [(MCPeerID *)[(MCNearbyServiceBrowser *)browser myPeerID] copy];
  v8->_browser = browser;
  v8->_session = session;
  v8->_nearbyPeersSection = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8->_invitedPeersSection = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8->_invitedPeersState = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8->_foundPeers = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8->_minimumNumberOfPeers = 2;
  v8->_maximumNumberOfPeers = 8;
  if (![(MCNearbyServiceBrowser *)v8->_browser delegate])
  {
    [(MCNearbyServiceBrowser *)v8->_browser setDelegate:v8];
  }

  [(MCSession *)v8->_session setPrivateDelegate:v8];
  v8->_callbackQueue = dispatch_queue_create("com.apple.MCBrowserViewController.callbackQueue", 0);
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:v8 selector:sel_applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
  [v10 addObserver:v8 selector:sel_applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
  return v8;
}

- (MCBrowserViewController)initWithServiceType:(NSString *)serviceType session:(MCSession *)session
{
  v6 = [[MCNearbyServiceBrowser alloc] initWithPeer:[(MCSession *)session myPeerID] serviceType:serviceType];

  return [(MCBrowserViewController *)self initWithBrowser:v6 session:session];
}

- (MCBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = MCBrowserViewController;
  [(MCBrowserViewController *)&v5 doesNotRecognizeSelector:a2, a4];
  return 0;
}

- (MCBrowserViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = MCBrowserViewController;
  [(MCBrowserViewController *)&v4 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = MCBrowserViewController;
  [(MCBrowserViewController *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MCBrowserViewController *)self browser];
  v7 = [(MCBrowserViewController *)self session];
  v8 = [(MCBrowserViewController *)self minimumNumberOfPeers];
  v9 = [(MCBrowserViewController *)self maximumNumberOfPeers];
  [(MCBrowserViewController *)self delegate];
  v10 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p Browser = %@ Session = %@ MinimumNumberOfPeers = %ld MaximumNumberOfPeers = %ld Delegate = <%@: %p>>", v5, self, v6, v7, v8, v9, NSStringFromClass(v10), -[MCBrowserViewController delegate](self, "delegate")];
}

- (BOOL)isVisible
{
  v3 = [(MCBrowserViewController *)self isViewLoaded];
  if (v3)
  {
    LOBYTE(v3) = [-[MCBrowserViewController view](self "view")] != 0;
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MCBrowserViewController;
  [(MCBrowserViewController *)&v5 viewDidLoad];
  [(UITableView *)[(MCBrowserViewController *)self tableView] registerClass:objc_opt_class() forCellReuseIdentifier:@"Peer Cell"];
  v3 = _NSDictionaryOfVariableBindings(&cfstr_TopguideNaviga.isa, [(MCBrowserViewController *)self topLayoutGuide], [(MCBrowserViewController *)self navigationBar], 0);
  v4 = [(MCBrowserViewController *)self view];
  [v4 addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"V:[topGuide]-0-[navigationBar]", 0, 0, v3)}];
  [(UINavigationBar *)[(MCBrowserViewController *)self navigationBar] setDelegate:self];
}

- (void)handleViewWillAppear
{
  v15 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)[(MCBrowserViewController *)self nearbyPeersSection] removeAllObjects];
  [(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] removeAllObjects];
  [(NSMutableDictionary *)[(MCBrowserViewController *)self invitedPeersState] removeAllObjects];
  [(NSMutableArray *)[(MCBrowserViewController *)self foundPeers] removeAllObjects];
  [(MCBrowserViewController *)self setDeclinedPeersCount:0];
  [(UIBarButtonItem *)[(MCBrowserViewController *)self doneButton] setEnabled:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(MCSession *)self->_session connectedPeers];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        [(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] addObject:v8];
        [(MCBrowserViewController *)self peer:v8 changedStateTo:2];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(UITableView *)[(MCBrowserViewController *)self tableView] reloadData];
  [(MCNearbyServiceBrowser *)[(MCBrowserViewController *)self browser] startBrowsingForPeers];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleViewDidDisappear
{
  v2 = [(MCBrowserViewController *)self browser];

  [(MCNearbyServiceBrowser *)v2 stopBrowsingForPeers];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = MCBrowserViewController;
  [(MCBrowserViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setMinimumNumberOfPeers:(NSUInteger)minimumNumberOfPeers
{
  v3 = 2;
  if (minimumNumberOfPeers >= 2 && (v3 = 8, minimumNumberOfPeers <= 8))
  {
    self->_minimumNumberOfPeers = minimumNumberOfPeers;
  }

  else
  {
    self->_minimumNumberOfPeers = v3;
  }
}

- (void)setMaximumNumberOfPeers:(NSUInteger)maximumNumberOfPeers
{
  v3 = 2;
  if (maximumNumberOfPeers >= 2 && (v3 = 8, maximumNumberOfPeers <= 8))
  {
    self->_maximumNumberOfPeers = maximumNumberOfPeers;
  }

  else
  {
    self->_maximumNumberOfPeers = v3;
  }
}

- (void)doneTapped:(id)a3
{
  v4 = [(MCBrowserViewController *)self delegate];

  [v4 browserViewControllerDidFinish:self];
}

- (void)peerJoinedSession
{
  v3 = [(NSArray *)[(MCSession *)[(MCBrowserViewController *)self session] connectedPeers] count]+ 1;
  v4 = v3 >= [(MCBrowserViewController *)self minimumNumberOfPeers];
  v5 = [(MCBrowserViewController *)self doneButton];

  [(UIBarButtonItem *)v5 setEnabled:v4];
}

- (void)peer:(id)a3 changedStateTo:(int)a4
{
  v22 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_22;
      }

      v9 = [(MCBrowserViewController *)self invitedPeersState];
      v10 = MEMORY[0x277CCABB0];
      v11 = 1;
    }

    else
    {
      [(NSMutableArray *)[(MCBrowserViewController *)self nearbyPeersSection] removeObject:a3];
      [(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] addObject:a3];
      v9 = [(MCBrowserViewController *)self invitedPeersState];
      v10 = MEMORY[0x277CCABB0];
      v11 = 0;
    }

    v17 = [v10 numberWithInteger:v11];
    v18 = *MEMORY[0x277D85DE8];

    [(NSMutableDictionary *)v9 setObject:v17 forKey:a3];
  }

  else
  {
    switch(a4)
    {
      case 2:
        v12 = [(MCBrowserViewController *)self invitedPeersState];
        -[NSMutableDictionary setObject:forKey:](v12, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:2], a3);
        v13 = *MEMORY[0x277D85DE8];

        [(MCBrowserViewController *)self peerJoinedSession];
        break;
      case 3:
        v14 = [(MCBrowserViewController *)self invitedPeersState];
        -[NSMutableDictionary setObject:forKey:](v14, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:3], a3);
        v15 = [(MCBrowserViewController *)self declinedPeersCount];
        v16 = *MEMORY[0x277D85DE8];

        [(MCBrowserViewController *)self setDeclinedPeersCount:v15 + 1];
        break;
      case 4:
        [(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] removeObject:a3];
        [(NSMutableDictionary *)[(MCBrowserViewController *)self invitedPeersState] removeObjectForKey:a3];
        if ([(NSMutableArray *)[(MCBrowserViewController *)self foundPeers] containsObject:a3])
        {
          v7 = [(MCBrowserViewController *)self nearbyPeersSection];
          v8 = *MEMORY[0x277D85DE8];

          [(NSMutableArray *)v7 addObject:a3];
          return;
        }

LABEL_24:
        v20 = *MEMORY[0x277D85DE8];
        return;
      default:
LABEL_22:
        v19 = mcbrowser_ui_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21[0] = 67109120;
          v21[1] = a4;
          _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, "Unknown peer state [%d].", v21, 8u);
        }

        goto LABEL_24;
    }
  }
}

- (void)cancelTapped:(id)a3
{
  v4 = [(MCBrowserViewController *)self delegate];

  [v4 browserViewControllerWasCancelled:self];
}

- (id)detailStringForPeerState:(int)a3
{
  if (a3 <= 4)
  {
    return [*(self + 138) localizedStringForKey:off_278B44280[a3] value:&stru_284D24468 table:0];
  }

  return self;
}

- (void)verifyPeerIsAccountedFor:(id)a3
{
  [(NSMutableArray *)[(MCBrowserViewController *)self nearbyPeersSection] removeObject:a3];
  if (([(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] containsObject:a3]& 1) == 0)
  {
    v5 = [(MCBrowserViewController *)self invitedPeersSection];

    [(NSMutableArray *)v5 addObject:a3];
  }
}

- (BOOL)maximumNumberOfPeersReached
{
  v3 = [(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] count];
  v4 = v3 - [(MCBrowserViewController *)self declinedPeersCount];
  return v4 >= [(MCBrowserViewController *)self maximumNumberOfPeers]- 1;
}

- (BOOL)minimumNumberOfPeersReached
{
  v3 = [(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] count];
  v4 = v3 - [(MCBrowserViewController *)self declinedPeersCount];
  return v4 >= [(MCBrowserViewController *)self minimumNumberOfPeers]- 1;
}

- (id)nearbySectionTitle
{
  v3 = [(MCBrowserViewController *)self minimumNumberOfPeersReached];
  v4 = [(MCBrowserViewController *)self maximumNumberOfPeersReached];
  v5 = v4;
  if (!v3)
  {
    v15 = [(MCBrowserViewController *)self minimumNumberOfPeers];
    v16 = ~[(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] count];
    v6 = v15 + [(MCBrowserViewController *)self declinedPeersCount]+ v16;
    if (!v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v6 = 0;
  if (v4)
  {
    return 0;
  }

LABEL_3:
  v7 = [(MCBrowserViewController *)self maximumNumberOfPeers];
  v8 = ~[(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] count];
  v9 = v7 + [(MCBrowserViewController *)self declinedPeersCount]+ v8;
  if (v9 == 1 && v3)
  {
    frameworkBundle = self->_frameworkBundle;
    v12 = @"Choose up to %lu more invitee";
LABEL_8:
    v13 = [(NSBundle *)frameworkBundle localizedStringForKey:v12 value:&stru_284D24468 table:0];
    return [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, 1, v20];
  }

  if (v3)
  {
    v17 = [(NSBundle *)self->_frameworkBundle localizedStringForKey:@"Choose up to %lu more invitees" value:&stru_284D24468 table:0];
    return [MEMORY[0x277CCACA8] localizedStringWithFormat:v17, v9, v20];
  }

  else
  {
    frameworkBundle = self->_frameworkBundle;
    if (v6 == v9 && v9 == 1)
    {
      v12 = @"Choose %lu invitee";
      goto LABEL_8;
    }

    if (v6 == v9)
    {
      v18 = [(NSBundle *)frameworkBundle localizedStringForKey:@"Choose %lu invitees" value:&stru_284D24468 table:0];
      v19 = MEMORY[0x277CCACA8];
    }

    else
    {
      v18 = [(NSBundle *)frameworkBundle localizedStringForKey:@"Choose %lu to %lu invitees" value:&stru_284D24468 table:0];
      v19 = MEMORY[0x277CCACA8];
      v20 = v9;
    }

    return [v19 localizedStringWithFormat:v18, v6, v20];
  }
}

- (void)applicationDidEnterBackgroundNotification:(id)a3
{
  if ([(MCBrowserViewController *)self isVisible])
  {

    [(MCBrowserViewController *)self handleViewDidDisappear];
  }
}

- (void)applicationWillEnterForegroundNotification:(id)a3
{
  if ([(MCBrowserViewController *)self isVisible])
  {

    [(MCBrowserViewController *)self handleViewWillAppear];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] count]&& ![(MCBrowserViewController *)self maximumNumberOfPeersReached])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] count];
  if (a4 || !v6)
  {

    return [(MCBrowserViewController *)self nearbySectionTitle];
  }

  else
  {
    frameworkBundle = self->_frameworkBundle;

    return [(NSBundle *)frameworkBundle localizedStringForKey:@"Invitees" value:&stru_284D24468 table:0];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] count];
  if (a4 || !v6)
  {
    result = [(NSMutableArray *)[(MCBrowserViewController *)self nearbyPeersSection] count];
    if (result <= 1)
    {
      return 1;
    }
  }

  else
  {
    v7 = [(MCBrowserViewController *)self invitedPeersSection];

    return [(NSMutableArray *)v7 count];
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [a3 dequeueReusableCellWithIdentifier:@"Peer Cell" forIndexPath:?];
  [v6 setAccessoryType:0];
  [v6 setAccessoryView:0];
  if (-[NSMutableArray count](-[MCBrowserViewController invitedPeersSection](self, "invitedPeersSection"), "count") && ![a4 section])
  {
    v9 = -[NSMutableArray objectAtIndex:](-[MCBrowserViewController invitedPeersSection](self, "invitedPeersSection"), "objectAtIndex:", [a4 row]);
    v10 = [(NSMutableDictionary *)[(MCBrowserViewController *)self invitedPeersState] objectForKey:v9];
    [objc_msgSend(v6 "textLabel")];
    [objc_msgSend(v6 "textLabel")];
    v7 = -[MCBrowserViewController detailStringForPeerState:](self, "detailStringForPeerState:", [v10 integerValue]);
    goto LABEL_7;
  }

  if ([(NSMutableArray *)[(MCBrowserViewController *)self nearbyPeersSection] count])
  {
    [objc_msgSend(v6 "textLabel")];
    [objc_msgSend(v6 "textLabel")];
    v7 = &stru_284D24468;
    [objc_msgSend(v6 "detailTextLabel")];
LABEL_7:
    [objc_msgSend(v6 "detailTextLabel")];
    return v6;
  }

  [objc_msgSend(v6 "textLabel")];
  [objc_msgSend(v6 "textLabel")];
  [objc_msgSend(v6 "detailTextLabel")];
  [objc_msgSend(v6 "detailTextLabel")];
  v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v8 setHidesWhenStopped:1];
  [v8 startAnimating];
  [v6 setAccessoryView:v8];
  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = -[NSMutableArray objectAtIndex:](-[MCBrowserViewController nearbyPeersSection](self, "nearbyPeersSection", a3), "objectAtIndex:", [a4 row]);
  [(MCNearbyServiceBrowser *)[(MCBrowserViewController *)self browser] invitePeer:v5 toSession:[(MCBrowserViewController *)self session] withContext:0 timeout:0.0];
  [(MCBrowserViewController *)self peer:v5 changedStateTo:0];
  v6 = [(MCBrowserViewController *)self tableView];

  [(UITableView *)v6 reloadData];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  if (!-[NSMutableArray count](-[MCBrowserViewController invitedPeersSection](self, "invitedPeersSection", a3), "count") || (v6 = [a4 section]) != 0)
  {
    LOBYTE(v6) = [(NSMutableArray *)[(MCBrowserViewController *)self nearbyPeersSection] count]!= 0;
  }

  return v6;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [(NSMutableArray *)[(MCBrowserViewController *)self invitedPeersSection] count];
  if (!a4 && v6 || ![(NSMutableArray *)[(MCBrowserViewController *)self nearbyPeersSection] count])
  {
    return 0;
  }

  v7 = [[MCNearbyPeerTableViewHeader alloc] initWithTitle:[(MCBrowserViewController *)self nearbySectionTitle]];

  return v7;
}

- (void)browser:(id)a3 foundPeer:(id)a4 withDiscoveryInfo:(id)a5
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MCBrowserViewController_browser_foundPeer_withDiscoveryInfo___block_invoke;
  block[3] = &unk_278B43C88;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__MCBrowserViewController_browser_foundPeer_withDiscoveryInfo___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [objc_msgSend(*(a1 + 32) "foundPeers")];
  if ([objc_msgSend(*(a1 + 32) "nearbyPeersSection")])
  {
    v2 = mcbrowser_ui_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) displayName];
      *buf = 138412290;
      v16 = v3;
      v4 = "Found Peer [%@] - peer already previously discovered?";
LABEL_7:
      _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
    }
  }

  else
  {
    v5 = [objc_msgSend(objc_msgSend(*(a1 + 32) "session")];
    v2 = mcbrowser_ui_log();
    v6 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v6)
      {
        v7 = [*(a1 + 40) displayName];
        *buf = 138412290;
        v16 = v7;
        v4 = "Found Peer [%@] - peer already connected.";
        goto LABEL_7;
      }
    }

    else
    {
      if (v6)
      {
        v8 = [*(a1 + 40) displayName];
        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Found Peer [%@].", buf, 0xCu);
      }

      v9 = *(a1 + 32);
      v10 = *(*(a1 + 32) + 1120);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__MCBrowserViewController_browser_foundPeer_withDiscoveryInfo___block_invoke_83;
      block[3] = &unk_278B43C88;
      v13 = v9;
      v14 = *(a1 + 48);
      dispatch_async(v10, block);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __63__MCBrowserViewController_browser_foundPeer_withDiscoveryInfo___block_invoke_83(uint64_t a1)
{
  [*(a1 + 32) delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [objc_msgSend(*(a1 + 32) "delegate")])
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __63__MCBrowserViewController_browser_foundPeer_withDiscoveryInfo___block_invoke_2;
    v2[3] = &unk_278B43C60;
    v3 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v2);
  }
}

uint64_t __63__MCBrowserViewController_browser_foundPeer_withDiscoveryInfo___block_invoke_2(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "nearbyPeersSection")];
  v2 = [*(a1 + 32) tableView];

  return [v2 reloadData];
}

- (void)browser:(id)a3 lostPeer:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__MCBrowserViewController_browser_lostPeer___block_invoke;
  v4[3] = &unk_278B43C60;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __44__MCBrowserViewController_browser_lostPeer___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [objc_msgSend(*(a1 + 32) "foundPeers")];
  if ([objc_msgSend(*(a1 + 32) "nearbyPeersSection")])
  {
    v2 = mcbrowser_ui_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) displayName];
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Removing peer [%@] from tableView.", &v7, 0xCu);
    }

    [objc_msgSend(*(a1 + 32) "nearbyPeersSection")];
    [objc_msgSend(*(a1 + 32) "tableView")];
  }

  v4 = mcbrowser_ui_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) displayName];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Lost Peer [%@].", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5 propagate:(BOOL *)a6
{
  v6 = mcbrowser_ui_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MCBrowserViewController session:didReceiveData:fromPeer:propagate:];
  }
}

- (void)session:(id)a3 peer:(id)a4 didChangeState:(int64_t)a5 propagate:(BOOL *)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = mcbrowser_ui_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = [a4 displayName];
    v14 = 2112;
    v15 = [MCSession stringForSessionState:a5];
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Peer [%@] changed state to [%@].", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MCBrowserViewController_session_peer_didChangeState_propagate___block_invoke;
  block[3] = &unk_278B43E68;
  block[5] = a4;
  block[6] = a5;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __65__MCBrowserViewController_session_peer_didChangeState_propagate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    if (v2 == 1)
    {
      [*(a1 + 32) verifyPeerIsAccountedFor:*(a1 + 40)];
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = 1;
      goto LABEL_12;
    }

    if (v2 == 2)
    {
      [*(a1 + 32) verifyPeerIsAccountedFor:*(a1 + 40)];
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = 2;
LABEL_12:
      [v3 peer:v4 changedStateTo:v5];
    }
  }

  else
  {
    v6 = [objc_msgSend(*(a1 + 32) "invitedPeersState")];
    if (v6)
    {
      v7 = [v6 integerValue];
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      if (v7)
      {
        v5 = 4;
      }

      else
      {
        v5 = 3;
      }

      goto LABEL_12;
    }

    v8 = mcbrowser_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) displayName];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Peer [%@] disconnected but was not in 'invitees' section.", &v12, 0xCu);
    }
  }

  result = [objc_msgSend(*(a1 + 32) "tableView")];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)session:(id)a3 didReceiveStream:(id)a4 withName:(id)a5 fromPeer:(id)a6 propagate:(BOOL *)a7
{
  v7 = mcbrowser_ui_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MCBrowserViewController session:didReceiveData:fromPeer:propagate:];
  }
}

- (void)session:(id)a3 didStartReceivingResourceWithName:(id)a4 fromPeer:(id)a5 withProgress:(id)a6 propagate:(BOOL *)a7
{
  v7 = mcbrowser_ui_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MCBrowserViewController session:didReceiveData:fromPeer:propagate:];
  }
}

- (void)session:(id)a3 didFinishReceivingResourceWithName:(id)a4 fromPeer:(id)a5 atURL:(id)a6 withError:(id)a7 propagate:(BOOL *)a8
{
  v8 = mcbrowser_ui_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MCBrowserViewController session:didReceiveData:fromPeer:propagate:];
  }
}

@end