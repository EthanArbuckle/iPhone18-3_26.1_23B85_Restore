@interface ANAnnounce
- (ANAnnounce)initWithEndpointIdentifier:(id)identifier;
- (ANAnnounceDelegate)delegate;
- (BOOL)isAnnounceEnabledForAnyAccessoryInHome:(id)home;
- (BOOL)isAnnounceEnabledForAnyAccessoryOrUserInHome:(id)home;
- (BOOL)isEndpointWithUUID:(id)d inRoomWithName:(id)name;
- (BOOL)isLocalDeviceInRoom:(id)room;
- (NSArray)receivedAnnouncements;
- (NSArray)unplayedAnnouncements;
- (id)announcementForID:(id)d;
- (id)contextFromAnnouncement:(id)announcement;
- (id)homeNamesForContext:(id)context;
- (id)receivedAnnouncementIDs;
- (void)_sendRequestLegacy:(id)legacy completion:(id)completion;
- (void)announcementForID:(id)d reply:(id)reply;
- (void)broadcastReply:(id)reply completion:(id)completion;
- (void)broadcastReply:(id)reply forAnnouncement:(id)announcement completion:(id)completion;
- (void)broadcastReply:(id)reply forAnnouncementID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)getReceivedAnnouncementsWithCompletionHandler:(id)handler;
- (void)getScanningDeviceCandidates:(id)candidates;
- (void)invalidate;
- (void)lastPlayedAnnouncementInfo:(id)info;
- (void)localParticipant:(id)participant;
- (void)mockAnnouncement:(id)announcement forHomeWithName:(id)name playbackDeadline:(id)deadline completion:(id)completion;
- (void)prewarmWithHandler:(id)handler;
- (void)receivedAnnouncementIDs:(id)ds;
- (void)sendAnnouncement:(id)announcement toRoomsWithIDs:(id)ds andZonesWithIDs:(id)iDs inHomeWithID:(id)d completion:(id)completion;
- (void)sendAnnouncement:(id)announcement toRoomsWithNames:(id)names andZonesWithNames:(id)withNames inHomeWithName:(id)name completion:(id)completion;
- (void)sendReply:(id)reply forAnnouncement:(id)announcement completion:(id)completion;
- (void)sendRequest:(id)request completion:(id)completion;
- (void)validateDestinationFromContext:(id)context completion:(id)completion;
@end

@implementation ANAnnounce

- (ANAnnounce)initWithEndpointIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = ANAnnounce;
  v6 = [(ANAnnounce *)&v22 init];
  if (v6)
  {
    v7 = ANLogHandleAnnounce();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = &stru_2836DAA20;
      v25 = 2112;
      v26 = @"com.apple.announced.server";
      _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_DEFAULT, "%@Creating Connection to %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_endpointIdentifier, identifier);
    v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.announced.server" options:4096];
    connection = v6->_connection;
    v6->_connection = v8;

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E93E8];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    [v10 setClasses:v13 forSelector:sel_getReceivedAnnouncementsForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
    [v10 setClasses:v13 forSelector:sel_getUnplayedAnnouncementsForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
    [v10 setClass:objc_opt_class() forSelector:sel_sendRequest_completion_ argumentIndex:0 ofReply:1];
    [v10 setClass:objc_opt_class() forSelector:sel_sendRequestLegacy_completion_ argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)v6->_connection setRemoteObjectInterface:v10];
    objc_initWeak(buf, v6);
    v14 = v6->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__ANAnnounce_initWithEndpointIdentifier___block_invoke;
    v20[3] = &unk_2784E2060;
    objc_copyWeak(&v21, buf);
    [(NSXPCConnection *)v14 setInterruptionHandler:v20];
    v15 = v6->_connection;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__ANAnnounce_initWithEndpointIdentifier___block_invoke_2;
    v18[3] = &unk_2784E2060;
    objc_copyWeak(&v19, buf);
    [(NSXPCConnection *)v15 setInvalidationHandler:v18];
    [(NSXPCConnection *)v6->_connection resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

void __41__ANAnnounce_initWithEndpointIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = &stru_2836DAA20;
    _os_log_impl(&dword_2237C8000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection to Announced was interrupted", buf, 0xCu);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ANAnnounce_initWithEndpointIdentifier___block_invoke_89;
  v4[3] = &unk_2784E2060;
  objc_copyWeak(&v5, (a1 + 32));
  [ANUtils asyncDispatchOnGlobalQueue:v4];
  objc_destroyWeak(&v5);
  v3 = *MEMORY[0x277D85DE8];
}

void __41__ANAnnounce_initWithEndpointIdentifier___block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionInterrupted];
}

void __41__ANAnnounce_initWithEndpointIdentifier___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = &stru_2836DAA20;
    _os_log_impl(&dword_2237C8000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection to Announced was invalidated", buf, 0xCu);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ANAnnounce_initWithEndpointIdentifier___block_invoke_91;
  v4[3] = &unk_2784E2060;
  objc_copyWeak(&v5, (a1 + 32));
  [ANUtils asyncDispatchOnGlobalQueue:v4];
  objc_destroyWeak(&v5);
  v3 = *MEMORY[0x277D85DE8];
}

void __41__ANAnnounce_initWithEndpointIdentifier___block_invoke_91(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionInvalidated];
}

- (void)dealloc
{
  [(ANAnnounce *)self invalidate];
  v3.receiver = self;
  v3.super_class = ANAnnounce;
  [(ANAnnounce *)&v3 dealloc];
}

- (void)invalidate
{
  objc_storeWeak(&self->_delegate, 0);
  connection = [(ANAnnounce *)self connection];
  [connection invalidate];
}

- (void)localParticipant:(id)participant
{
  participantCopy = participant;
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__ANAnnounce_localParticipant___block_invoke;
  v8[3] = &unk_2784E1F20;
  v9 = participantCopy;
  v6 = participantCopy;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  [v7 localParticipant:v6];
}

void __31__ANAnnounce_localParticipant___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412802;
    v9 = &stru_2836DAA20;
    v10 = 2080;
    v11 = "[ANAnnounce localParticipant:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v8, 0x20u);
  }

  v5 = *(a1 + 32);
  v6 = objc_opt_new();
  (*(v5 + 16))(v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendRequest:(id)request completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = &stru_2836DAA20;
    v20 = 2112;
    v21 = requestCopy;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@Sending Request: %@", buf, 0x16u);
  }

  connection = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__ANAnnounce_sendRequest_completion___block_invoke;
  v16[3] = &unk_2784E1F20;
  v10 = completionCopy;
  v17 = v10;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__ANAnnounce_sendRequest_completion___block_invoke_96;
  v14[3] = &unk_2784E2138;
  v15 = v10;
  v12 = v10;
  [v11 sendRequest:requestCopy completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __37__ANAnnounce_sendRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412802;
    v8 = &stru_2836DAA20;
    v9 = 2080;
    v10 = "[ANAnnounce sendRequest:completion:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __37__ANAnnounce_sendRequest_completion___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ANLogHandleAnnounce();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      v11 = &stru_2836DAA20;
      v12 = 2080;
      v13 = "[ANAnnounce sendRequest:completion:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_ERROR, "%@%s: %@", &v10, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendAnnouncement:(id)announcement toRoomsWithNames:(id)names andZonesWithNames:(id)withNames inHomeWithName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  withNamesCopy = withNames;
  namesCopy = names;
  v18 = [ANAnnouncementContent contentWithAudioFileURL:announcement];
  v16 = [ANAnnouncementDestination destinationWithHomeName:nameCopy zoneNames:withNamesCopy roomNames:namesCopy];

  v17 = [ANAnnouncementRequest requestWithContent:v18 destination:v16];
  [(ANAnnounce *)self _sendRequestLegacy:v17 completion:completionCopy];
}

- (void)sendAnnouncement:(id)announcement toRoomsWithIDs:(id)ds andZonesWithIDs:(id)iDs inHomeWithID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  iDsCopy = iDs;
  dsCopy = ds;
  v18 = [ANAnnouncementContent contentWithAudioFileURL:announcement];
  v16 = [ANAnnouncementDestination destinationWithHomeIdentifier:dCopy zoneIdentifiers:iDsCopy roomIdentifiers:dsCopy];

  v17 = [ANAnnouncementRequest requestWithContent:v18 destination:v16];
  [(ANAnnounce *)self _sendRequestLegacy:v17 completion:completionCopy];
}

- (void)sendReply:(id)reply forAnnouncement:(id)announcement completion:(id)completion
{
  completionCopy = completion;
  announcementCopy = announcement;
  v13 = [ANAnnouncementContent contentWithAudioFileURL:reply];
  identifier = [announcementCopy identifier];

  v11 = [ANAnnouncementDestination destinationWithReplyToAnnouncementIdentifier:identifier];

  [v11 setReplyToSender:1];
  v12 = [ANAnnouncementRequest requestWithContent:v13 destination:v11];
  [(ANAnnounce *)self _sendRequestLegacy:v12 completion:completionCopy];
}

- (void)broadcastReply:(id)reply forAnnouncement:(id)announcement completion:(id)completion
{
  completionCopy = completion;
  replyCopy = reply;
  identifier = [announcement identifier];
  [(ANAnnounce *)self broadcastReply:replyCopy forAnnouncementID:identifier completion:completionCopy];
}

- (void)broadcastReply:(id)reply forAnnouncementID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v12 = [ANAnnouncementContent contentWithAudioFileURL:reply];
  v10 = [ANAnnouncementDestination destinationWithReplyToAnnouncementIdentifier:dCopy];

  v11 = [ANAnnouncementRequest requestWithContent:v12 destination:v10];
  [(ANAnnounce *)self _sendRequestLegacy:v11 completion:completionCopy];
}

- (void)broadcastReply:(id)reply completion:(id)completion
{
  completionCopy = completion;
  v9 = [ANAnnouncementContent contentWithAudioFileURL:reply];
  v7 = [ANAnnouncementDestination destinationWithReplyToAnnouncementIdentifier:0];
  v8 = [ANAnnouncementRequest requestWithContent:v9 destination:v7];
  [(ANAnnounce *)self _sendRequestLegacy:v8 completion:completionCopy];
}

- (void)receivedAnnouncementIDs:(id)ds
{
  dsCopy = ds;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__ANAnnounce_receivedAnnouncementIDs___block_invoke;
  v9[3] = &unk_2784E1F20;
  v10 = dsCopy;
  v6 = dsCopy;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  endpointIdentifier = [(ANAnnounce *)self endpointIdentifier];
  [v7 receivedAnnouncementIdentifiersForEndpointID:endpointIdentifier reply:v6];
}

void __38__ANAnnounce_receivedAnnouncementIDs___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANAnnounce receivedAnnouncementIDs:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (id)receivedAnnouncementIDs
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__ANAnnounce_receivedAnnouncementIDs__block_invoke;
  v9[3] = &unk_2784E2160;
  v9[4] = &v10;
  v4 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  endpointIdentifier = [(ANAnnounce *)self endpointIdentifier];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__ANAnnounce_receivedAnnouncementIDs__block_invoke_101;
  v8[3] = &unk_2784E2188;
  v8[4] = &v10;
  [v4 receivedAnnouncementIdentifiersForEndpointID:endpointIdentifier reply:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __37__ANAnnounce_receivedAnnouncementIDs__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412802;
    v9 = &stru_2836DAA20;
    v10 = 2080;
    v11 = "[ANAnnounce receivedAnnouncementIDs]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v8, 0x20u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEBF8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)announcementForID:(id)d reply:(id)reply
{
  replyCopy = reply;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__ANAnnounce_announcementForID_reply___block_invoke;
  v12[3] = &unk_2784E1F20;
  v13 = replyCopy;
  v8 = replyCopy;
  dCopy = d;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  endpointIdentifier = [(ANAnnounce *)self endpointIdentifier];
  [v10 announcementForID:dCopy endpointID:endpointIdentifier reply:v8];
}

void __38__ANAnnounce_announcementForID_reply___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANAnnounce announcementForID:reply:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (id)announcementForID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v5 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2];
  endpointIdentifier = [(ANAnnounce *)self endpointIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__ANAnnounce_announcementForID___block_invoke_103;
  v9[3] = &unk_2784E21B0;
  v9[4] = &v10;
  [v5 announcementForID:dCopy endpointID:endpointIdentifier reply:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __32__ANAnnounce_announcementForID___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412802;
    v6 = &stru_2836DAA20;
    v7 = 2080;
    v8 = "[ANAnnounce announcementForID:]_block_invoke";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_ERROR, "%@%s: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getReceivedAnnouncementsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ANAnnounce_getReceivedAnnouncementsWithCompletionHandler___block_invoke;
  v9[3] = &unk_2784E1F20;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  endpointIdentifier = [(ANAnnounce *)self endpointIdentifier];
  [v7 getReceivedAnnouncementsForEndpointID:endpointIdentifier completionHandler:v6];
}

void __60__ANAnnounce_getReceivedAnnouncementsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANAnnounce getReceivedAnnouncementsWithCompletionHandler:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (NSArray)receivedAnnouncements
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__ANAnnounce_receivedAnnouncements__block_invoke;
  v9[3] = &unk_2784E2160;
  v9[4] = &v10;
  v4 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  endpointIdentifier = [(ANAnnounce *)self endpointIdentifier];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__ANAnnounce_receivedAnnouncements__block_invoke_105;
  v8[3] = &unk_2784E2188;
  v8[4] = &v10;
  [v4 getReceivedAnnouncementsForEndpointID:endpointIdentifier completionHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __35__ANAnnounce_receivedAnnouncements__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412802;
    v9 = &stru_2836DAA20;
    v10 = 2080;
    v11 = "[ANAnnounce receivedAnnouncements]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v8, 0x20u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEBF8];

  v7 = *MEMORY[0x277D85DE8];
}

- (NSArray)unplayedAnnouncements
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__ANAnnounce_unplayedAnnouncements__block_invoke;
  v9[3] = &unk_2784E2160;
  v9[4] = &v10;
  v4 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  endpointIdentifier = [(ANAnnounce *)self endpointIdentifier];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__ANAnnounce_unplayedAnnouncements__block_invoke_106;
  v8[3] = &unk_2784E2188;
  v8[4] = &v10;
  [v4 getUnplayedAnnouncementsForEndpointID:endpointIdentifier completionHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __35__ANAnnounce_unplayedAnnouncements__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412802;
    v9 = &stru_2836DAA20;
    v10 = 2080;
    v11 = "[ANAnnounce unplayedAnnouncements]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v8, 0x20u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEBF8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)mockAnnouncement:(id)announcement forHomeWithName:(id)name playbackDeadline:(id)deadline completion:(id)completion
{
  completionCopy = completion;
  connection = self->_connection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__ANAnnounce_mockAnnouncement_forHomeWithName_playbackDeadline_completion___block_invoke;
  v20[3] = &unk_2784E1F20;
  v12 = completionCopy;
  v21 = v12;
  deadlineCopy = deadline;
  nameCopy = name;
  announcementCopy = announcement;
  v16 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__ANAnnounce_mockAnnouncement_forHomeWithName_playbackDeadline_completion___block_invoke_107;
  v18[3] = &unk_2784E21D8;
  v19 = v12;
  v17 = v12;
  [v16 mockAnnouncement:announcementCopy forHomeWithName:nameCopy playbackDeadline:deadlineCopy completion:v18];
}

void __75__ANAnnounce_mockAnnouncement_forHomeWithName_playbackDeadline_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412802;
    v8 = &stru_2836DAA20;
    v9 = 2080;
    v10 = "[ANAnnounce mockAnnouncement:forHomeWithName:playbackDeadline:completion:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __75__ANAnnounce_mockAnnouncement_forHomeWithName_playbackDeadline_completion___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ANLogHandleAnnounce();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      v11 = &stru_2836DAA20;
      v12 = 2080;
      v13 = "[ANAnnounce mockAnnouncement:forHomeWithName:playbackDeadline:completion:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_ERROR, "%@%s: %@", &v10, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getScanningDeviceCandidates:(id)candidates
{
  candidatesCopy = candidates;
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ANAnnounce_getScanningDeviceCandidates___block_invoke;
  v8[3] = &unk_2784E1F20;
  v9 = candidatesCopy;
  v6 = candidatesCopy;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  [v7 getScanningDeviceCandidates:v6];
}

void __42__ANAnnounce_getScanningDeviceCandidates___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412802;
    v9 = &stru_2836DAA20;
    v10 = 2080;
    v11 = "[ANAnnounce getScanningDeviceCandidates:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v8, 0x20u);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEB98] set];
  (*(v5 + 16))(v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)contextFromAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v5 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_110];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ANAnnounce_contextFromAnnouncement___block_invoke_111;
  v8[3] = &unk_2784E2200;
  v8[4] = &v9;
  [v5 contextFromAnnouncement:announcementCopy reply:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __38__ANAnnounce_contextFromAnnouncement___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412802;
    v6 = &stru_2836DAA20;
    v7 = 2080;
    v8 = "[ANAnnounce contextFromAnnouncement:]_block_invoke";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_ERROR, "%@%s: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)homeNamesForContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__ANAnnounce_homeNamesForContext___block_invoke;
  v10[3] = &unk_2784E2160;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__ANAnnounce_homeNamesForContext___block_invoke_113;
  v9[3] = &unk_2784E2188;
  v9[4] = &v11;
  [v6 homeNamesForContext:contextCopy reply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __34__ANAnnounce_homeNamesForContext___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412802;
    v9 = &stru_2836DAA20;
    v10 = 2080;
    v11 = "[ANAnnounce homeNamesForContext:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v8, 0x20u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEBF8];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isLocalDeviceInRoom:(id)room
{
  roomCopy = room;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__ANAnnounce_isLocalDeviceInRoom___block_invoke;
  v9[3] = &unk_2784E2160;
  v9[4] = &v10;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__ANAnnounce_isLocalDeviceInRoom___block_invoke_114;
  v8[3] = &unk_2784E2228;
  v8[4] = &v10;
  [v6 isLocalDeviceInRoom:roomCopy reply:v8];

  LOBYTE(v6) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __34__ANAnnounce_isLocalDeviceInRoom___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANAnnounce isLocalDeviceInRoom:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEndpointWithUUID:(id)d inRoomWithName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__ANAnnounce_isEndpointWithUUID_inRoomWithName___block_invoke;
  v12[3] = &unk_2784E2160;
  v12[4] = &v13;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__ANAnnounce_isEndpointWithUUID_inRoomWithName___block_invoke_116;
  v11[3] = &unk_2784E2228;
  v11[4] = &v13;
  [v9 isEndpointWithUUID:dCopy inRoomWithName:nameCopy reply:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __48__ANAnnounce_isEndpointWithUUID_inRoomWithName___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANAnnounce isEndpointWithUUID:inRoomWithName:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAnnounceEnabledForAnyAccessoryInHome:(id)home
{
  homeCopy = home;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ANAnnounce_isAnnounceEnabledForAnyAccessoryInHome___block_invoke;
  v9[3] = &unk_2784E2160;
  v9[4] = &v10;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__ANAnnounce_isAnnounceEnabledForAnyAccessoryInHome___block_invoke_117;
  v8[3] = &unk_2784E2228;
  v8[4] = &v10;
  [v6 isAnnounceEnabledForAnyAccessoryInHome:homeCopy reply:v8];

  LOBYTE(v6) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __53__ANAnnounce_isAnnounceEnabledForAnyAccessoryInHome___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANAnnounce isAnnounceEnabledForAnyAccessoryInHome:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAnnounceEnabledForAnyAccessoryOrUserInHome:(id)home
{
  homeCopy = home;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__ANAnnounce_isAnnounceEnabledForAnyAccessoryOrUserInHome___block_invoke;
  v9[3] = &unk_2784E2160;
  v9[4] = &v10;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ANAnnounce_isAnnounceEnabledForAnyAccessoryOrUserInHome___block_invoke_118;
  v8[3] = &unk_2784E2228;
  v8[4] = &v10;
  [v6 isAnnounceEnabledForAnyAccessoryOrUserInHome:homeCopy reply:v8];

  LOBYTE(v6) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __59__ANAnnounce_isAnnounceEnabledForAnyAccessoryOrUserInHome___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANAnnounce isAnnounceEnabledForAnyAccessoryOrUserInHome:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *MEMORY[0x277D85DE8];
}

- (void)prewarmWithHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__ANAnnounce_prewarmWithHandler___block_invoke;
  v11[3] = &unk_2784E1F20;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__ANAnnounce_prewarmWithHandler___block_invoke_119;
  v9[3] = &unk_2784E1F20;
  v10 = v6;
  v8 = v6;
  [v7 prewarm:v9];
}

void __33__ANAnnounce_prewarmWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412802;
    v8 = &stru_2836DAA20;
    v9 = 2080;
    v10 = "[ANAnnounce prewarmWithHandler:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __33__ANAnnounce_prewarmWithHandler___block_invoke_119(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = ANLogHandleAnnounce();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = &stru_2836DAA20;
      v9 = 2080;
      v10 = "[ANAnnounce prewarmWithHandler:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)validateDestinationFromContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__ANAnnounce_validateDestinationFromContext_completion___block_invoke;
  v14[3] = &unk_2784E1F20;
  v8 = completionCopy;
  v15 = v8;
  contextCopy = context;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ANAnnounce_validateDestinationFromContext_completion___block_invoke_120;
  v12[3] = &unk_2784E1F20;
  v13 = v8;
  v11 = v8;
  [v10 validateDestinationFromContext:contextCopy reply:v12];
}

void __56__ANAnnounce_validateDestinationFromContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANAnnounce validateDestinationFromContext:completion:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

void __56__ANAnnounce_validateDestinationFromContext_completion___block_invoke_120(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = ANLogHandleAnnounce();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412802;
      v7 = &stru_2836DAA20;
      v8 = 2080;
      v9 = "[ANAnnounce validateDestinationFromContext:completion:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendRequestLegacy:(id)legacy completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  legacyCopy = legacy;
  completionCopy = completion;
  v8 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = &stru_2836DAA20;
    v20 = 2112;
    v21 = legacyCopy;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@Sending Request (Legacy): %@", buf, 0x16u);
  }

  connection = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__ANAnnounce__sendRequestLegacy_completion___block_invoke;
  v16[3] = &unk_2784E1F20;
  v10 = completionCopy;
  v17 = v10;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__ANAnnounce__sendRequestLegacy_completion___block_invoke_121;
  v14[3] = &unk_2784E21D8;
  v15 = v10;
  v12 = v10;
  [v11 sendRequestLegacy:legacyCopy completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __44__ANAnnounce__sendRequestLegacy_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412802;
    v8 = &stru_2836DAA20;
    v9 = 2080;
    v10 = "[ANAnnounce _sendRequestLegacy:completion:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __44__ANAnnounce__sendRequestLegacy_completion___block_invoke_121(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ANLogHandleAnnounce();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      v11 = &stru_2836DAA20;
      v12 = 2080;
      v13 = "[ANAnnounce _sendRequestLegacy:completion:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_ERROR, "%@%s: %@", &v10, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)lastPlayedAnnouncementInfo:(id)info
{
  infoCopy = info;
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__ANAnnounce_lastPlayedAnnouncementInfo___block_invoke;
  v8[3] = &unk_2784E1F20;
  v9 = infoCopy;
  v6 = infoCopy;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  [v7 lastPlayedAnnouncementInfo:v6];
}

void __41__ANAnnounce_lastPlayedAnnouncementInfo___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnnounce();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANAnnounce lastPlayedAnnouncementInfo:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (ANAnnounceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end