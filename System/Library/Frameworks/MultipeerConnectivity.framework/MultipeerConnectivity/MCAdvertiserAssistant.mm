@interface MCAdvertiserAssistant
- (MCAdvertiserAssistant)init;
- (MCAdvertiserAssistant)initWithServiceType:(NSString *)serviceType discoveryInfo:(NSDictionary *)info session:(MCSession *)session;
- (NSString)description;
- (void)advertiser:(id)advertiser didReceiveInvitationFromPeer:(id)peer withContext:(id)context invitationHandler:(id)handler;
- (void)applicationDidEnterBackgroundNotification:(id)notification;
- (void)applicationWillTerminateNotification:(id)notification;
- (void)dealloc;
- (void)presentNextInvitation;
- (void)start;
- (void)stop;
@end

@implementation MCAdvertiserAssistant

- (MCAdvertiserAssistant)init
{
  v3.receiver = self;
  v3.super_class = MCAdvertiserAssistant;
  [(MCAdvertiserAssistant *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (MCAdvertiserAssistant)initWithServiceType:(NSString *)serviceType discoveryInfo:(NSDictionary *)info session:(MCSession *)session
{
  v20.receiver = self;
  v20.super_class = MCAdvertiserAssistant;
  v8 = [(MCAdvertiserAssistant *)&v20 init];
  if (v8)
  {
    if (!session)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = objc_opt_class();
      [v9 raise:v10 format:{@"A nil MCSession object passed to %@", NSStringFromClass(v11)}];
    }

    v12 = session;
    v8->_session = v12;
    v8->_myPeerID = [(MCPeerID *)[(MCSession *)v12 myPeerID] copy];
    if (![MCNearbyServiceUtils isServiceTypeValid:serviceType])
    {
      v13 = MEMORY[0x277CBEAD8];
      v14 = *MEMORY[0x277CBE660];
      v15 = objc_opt_class();
      [v13 raise:v14 format:{@"Invalid serviceType passed to %@", NSStringFromClass(v15)}];
    }

    v8->_serviceType = [(NSString *)serviceType copy];
    v8->_discoveryInfo = [(NSDictionary *)info copy];
    v16 = [[MCNearbyServiceAdvertiser alloc] initWithPeer:v8->_myPeerID discoveryInfo:v8->_discoveryInfo serviceType:v8->_serviceType];
    v8->_advertiser = v16;
    [(MCNearbyServiceAdvertiser *)v16 setDelegate:v8];
    v8->_invitationsBuffer = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    v8->_appName = [objc_msgSend(v17 objectForKey:{*MEMORY[0x277CBED50]), "copy"}];
    v8->_frameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
    [defaultCenter addObserver:v8 selector:sel_applicationWillTerminateNotification_ name:*MEMORY[0x277D76770] object:0];
  }

  return v8;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  [(MCNearbyServiceAdvertiser *)self->_advertiser setDelegate:0];
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = MCAdvertiserAssistant;
  [(MCAdvertiserAssistant *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  serviceType = [(MCAdvertiserAssistant *)self serviceType];
  discoveryInfo = [(MCAdvertiserAssistant *)self discoveryInfo];
  session = [(MCAdvertiserAssistant *)self session];
  [(MCAdvertiserAssistant *)self delegate];
  v9 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p ServiceType = %@ DiscoveryInfo = %@ Session = %@ Delegate = <%@: %p>>", v5, self, serviceType, discoveryInfo, session, NSStringFromClass(v9), -[MCAdvertiserAssistant delegate](self, "delegate")];
}

- (void)start
{
  advertiser = [(MCAdvertiserAssistant *)self advertiser];

  [(MCNearbyServiceAdvertiser *)advertiser startAdvertisingPeer];
}

- (void)stop
{
  advertiser = [(MCAdvertiserAssistant *)self advertiser];

  [(MCNearbyServiceAdvertiser *)advertiser stopAdvertisingPeer];
}

- (void)presentNextInvitation
{
  if (![(MCAdvertiserAssistant *)self alertController]&& ![(MCAdvertiserAssistant *)self invitationHandlerForPresentedAlert])
  {
    if ([(NSMutableArray *)[(MCAdvertiserAssistant *)self invitationsBuffer] count])
    {
      v3 = [(NSMutableArray *)[(MCAdvertiserAssistant *)self invitationsBuffer] objectAtIndex:0];
      v4 = [v3 objectForKey:@"peerID"];
      -[MCAdvertiserAssistant setInvitationHandlerForPresentedAlert:](self, "setInvitationHandlerForPresentedAlert:", [v3 objectForKey:@"invitationHandler"]);
      v5 = [(NSBundle *)self->_frameworkBundle localizedStringForKey:@"Accept" value:&stru_284D24468 table:0];
      v6 = [(NSBundle *)self->_frameworkBundle localizedStringForKey:@"Decline" value:&stru_284D24468 table:0];
      v7 = [(NSBundle *)self->_frameworkBundle localizedStringForKey:@"%@ wants to connect." value:&stru_284D24468 table:0];
      appName = [(MCAdvertiserAssistant *)self appName];
      v9 = +[MCAlertController alertControllerWithTitle:message:preferredStyle:](MCAlertController, "alertControllerWithTitle:message:preferredStyle:", appName, [MEMORY[0x277CCACA8] stringWithFormat:v7, objc_msgSend(v4, "displayName")], 1);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46__MCAdvertiserAssistant_presentNextInvitation__block_invoke;
      v13[3] = &unk_278B447D8;
      v13[4] = self;
      -[MCAlertController addAction:](v9, "addAction:", [MEMORY[0x277D750F8] actionWithTitle:v5 style:0 handler:v13]);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __46__MCAdvertiserAssistant_presentNextInvitation__block_invoke_2;
      v12[3] = &unk_278B447D8;
      v12[4] = self;
      -[MCAlertController addAction:](v9, "addAction:", [MEMORY[0x277D750F8] actionWithTitle:v6 style:1 handler:v12]);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __46__MCAdvertiserAssistant_presentNextInvitation__block_invoke_3;
      v11[3] = &unk_278B43DF0;
      v11[4] = self;
      [(MCAlertController *)v9 setViewWillAppearHandler:v11];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __46__MCAdvertiserAssistant_presentNextInvitation__block_invoke_4;
      v10[3] = &unk_278B43DF0;
      v10[4] = self;
      [(MCAlertController *)v9 setViewDidDisappearHandler:v10];
      [(MCAdvertiserAssistant *)self setAlertController:v9];
      [(MCAlertController *)[(MCAdvertiserAssistant *)self alertController] show];
      [(NSMutableArray *)[(MCAdvertiserAssistant *)self invitationsBuffer] removeObjectAtIndex:0];
    }
  }
}

uint64_t __46__MCAdvertiserAssistant_presentNextInvitation__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) delegate];
  v2 = objc_opt_respondsToSelector();
  v3 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = *(a1 + 32);

    return [v3 advertiserAssitantWillPresentInvitation:v4];
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v6 = [*(a1 + 32) delegate];
      v7 = *(a1 + 32);

      return [v6 advertiserAssistantWillPresentInvitation:v7];
    }
  }

  return result;
}

uint64_t __46__MCAdvertiserAssistant_presentNextInvitation__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = *(a1 + 32);

  return [v2 setAlertController:0];
}

- (void)advertiser:(id)advertiser didReceiveInvitationFromPeer:(id)peer withContext:(id)context invitationHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = mcadvertiser_ui_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    displayName = [peer displayName];
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Advertiser assistant will present invitation from from peer [%@].", buf, 0xCu);
  }

  v11[0] = @"peerID";
  v11[1] = @"invitationHandler";
  v12[0] = peer;
  v12[1] = [handler copy];
  -[NSMutableArray addObject:](-[MCAdvertiserAssistant invitationsBuffer](self, "invitationsBuffer"), "addObject:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2]);
  [(MCAdvertiserAssistant *)self presentNextInvitation];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)applicationDidEnterBackgroundNotification:(id)notification
{
  if ([(MCAdvertiserAssistant *)self alertController])
  {
    [(MCAdvertiserAssistant *)self handleUserInvitationDecision:0];
    [(MCAlertController *)[(MCAdvertiserAssistant *)self alertController] dismiss];
    [(MCAdvertiserAssistant *)self setAlertController:0];
  }

  invitationsBuffer = self->_invitationsBuffer;

  [(NSMutableArray *)invitationsBuffer removeAllObjects];
}

- (void)applicationWillTerminateNotification:(id)notification
{
  if ([(MCAdvertiserAssistant *)self alertController])
  {
    [(MCAdvertiserAssistant *)self handleUserInvitationDecision:0];
    [(MCAlertController *)[(MCAdvertiserAssistant *)self alertController] dismiss];

    [(MCAdvertiserAssistant *)self setAlertController:0];
  }
}

@end