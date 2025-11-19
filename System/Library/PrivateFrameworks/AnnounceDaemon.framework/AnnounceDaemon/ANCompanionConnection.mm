@interface ANCompanionConnection
- (ANCompanionConnection)init;
- (ANCompanionConnectionDelegate)delegate;
- (void)_registerForEvents;
- (void)_setupLink;
- (void)_tearDownLink;
- (void)broadcastAnnouncementPlayed:(id)a3;
@end

@implementation ANCompanionConnection

- (ANCompanionConnection)init
{
  v7.receiver = self;
  v7.super_class = ANCompanionConnection;
  v2 = [(ANCompanionConnection *)&v7 init];
  if (v2 && ([MEMORY[0x277CEAB88] isPad] & 1) == 0)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.announce.coordinationServiceQueue", v3);
    rapportQueue = v2->_rapportQueue;
    v2->_rapportQueue = v4;

    [(ANCompanionConnection *)v2 _setupLink];
  }

  return v2;
}

- (void)broadcastAnnouncementPlayed:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277CEAB88] isPad] & 1) == 0)
  {
    v5 = *MEMORY[0x277D44230];
    v10[0] = @"announcementID";
    v10[1] = @"senderType";
    v11[0] = v4;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v11[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

    v8 = [(ANCompanionConnection *)self companionLinkClient];
    [v8 sendEventID:@"com.apple.announce.AnnouncementPlayed" event:v7 destinationID:v5 options:0 completion:&__block_literal_global_32];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __53__ANCompanionConnection_broadcastAnnouncementPlayed___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ANLogHandleCompanionConnection();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412546;
      v7 = &stru_2851BDB18;
      v8 = 2112;
      v9 = v2;
      _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_ERROR, "%@Broadcast Announcement Played Event Failed: %@", &v6, 0x16u);
    }

    v4 = +[ANAnalytics shared];
    [v4 error:5023];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Announcement Played Event Broadcasted Successfully", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setupLink
{
  v3 = objc_opt_new();
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = v3;

  v5 = [(ANCompanionConnection *)self rapportQueue];
  [(RPCompanionLinkClient *)self->_companionLinkClient setDispatchQueue:v5];

  [(RPCompanionLinkClient *)self->_companionLinkClient setControlFlags:32];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__ANCompanionConnection__setupLink__block_invoke;
  v9[3] = &unk_278C86580;
  objc_copyWeak(&v10, &location);
  [(RPCompanionLinkClient *)self->_companionLinkClient setInvalidationHandler:v9];
  v6 = self->_companionLinkClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ANCompanionConnection__setupLink__block_invoke_2;
  v7[3] = &unk_278C877C8;
  objc_copyWeak(&v8, &location);
  [(RPCompanionLinkClient *)v6 activateWithCompletion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __35__ANCompanionConnection__setupLink__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tearDownLink];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _setupLink];
}

void __35__ANCompanionConnection__setupLink__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleCompanionConnection();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = &stru_2851BDB18;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_ERROR, "%@Error activating link '%@'", &v8, 0x16u);
    }

    WeakRetained = +[ANAnalytics shared];
    [WeakRetained error:5024];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Link activated succcessfully", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _registerForEvents];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownLink
{
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_registerForEvents
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = ANLogHandleCompanionConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%@Registering for Event IDs", buf, 0xCu);
  }

  v4 = [(ANCompanionConnection *)self companionLinkClient];
  [v4 deregisterEventID:@"com.apple.announce.AnnouncementPlayed"];

  objc_initWeak(buf, self);
  v5 = [(ANCompanionConnection *)self companionLinkClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ANCompanionConnection__registerForEvents__block_invoke;
  v7[3] = &unk_278C877F0;
  objc_copyWeak(&v8, buf);
  [v5 registerEventID:@"com.apple.announce.AnnouncementPlayed" options:0 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__ANCompanionConnection__registerForEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 objectForKey:*MEMORY[0x277D442D0]];
  v7 = [v5 valueForKey:@"senderType"];
  v8 = [v7 unsignedIntegerValue];
  v9 = [v5 valueForKey:@"announcementID"];
  v10 = ANLogHandleCompanionConnection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = &stru_2851BDB18;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Received Event from %@: %@", &v16, 0x20u);
  }

  if (v8 != 1)
  {
    v13 = ANLogHandleCompanionConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
      v16 = 138412546;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_ERROR, "%@Unsupported Sender Type (%@). Ignoring Event.", &v16, 0x16u);
    }

    WeakRetained = +[ANAnalytics shared];
    [WeakRetained error:5025];
    goto LABEL_9;
  }

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = [WeakRetained delegate];
    [v12 companionDidPlayAnnouncement:v9];

LABEL_9:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (ANCompanionConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end