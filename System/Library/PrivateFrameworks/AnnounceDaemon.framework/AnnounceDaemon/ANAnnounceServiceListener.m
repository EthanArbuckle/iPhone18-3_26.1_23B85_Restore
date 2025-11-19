@interface ANAnnounceServiceListener
- (ANAnnounceServiceListener)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_handleError:(int64_t)a3 request:(id)a4 requestSentCompletionHandler:(id)a5;
- (void)_handleError:(int64_t)a3 request:(id)a4 sentCompletionHandler:(id)a5;
- (void)_sendReplyRequest:(id)a3 completion:(id)a4;
- (void)_sendRequest:(id)a3 completion:(id)a4;
- (void)_translateSentHandlerResponseAnnouncement:(id)a3 request:(id)a4 error:(id)a5 toRequestSentHandler:(id)a6;
- (void)announcementForID:(id)a3 endpointID:(id)a4 reply:(id)a5;
- (void)cleanForExit;
- (void)contextFromAnnouncement:(id)a3 reply:(id)a4;
- (void)getReceivedAnnouncementsForEndpointID:(id)a3 completionHandler:(id)a4;
- (void)getScanningDeviceCandidates:(id)a3;
- (void)getUnplayedAnnouncementsForEndpointID:(id)a3 completionHandler:(id)a4;
- (void)homeNamesForContext:(id)a3 reply:(id)a4;
- (void)isAnnounceEnabledForAnyAccessoryInHome:(id)a3 reply:(id)a4;
- (void)isAnnounceEnabledForAnyAccessoryOrUserInHome:(id)a3 reply:(id)a4;
- (void)isEndpointWithUUID:(id)a3 inRoomWithName:(id)a4 reply:(id)a5;
- (void)isLocalDeviceInRoom:(id)a3 reply:(id)a4;
- (void)localParticipant:(id)a3;
- (void)mockAnnouncement:(id)a3 forHomeWithName:(id)a4 playbackDeadline:(id)a5 completion:(id)a6;
- (void)prewarm:(id)a3;
- (void)receivedAnnouncementIdentifiersForEndpointID:(id)a3 reply:(id)a4;
- (void)send:(ANAnnouncementRequest *)a3 connection:(NSXPCConnection *)a4 completionHandler:(id)a5;
- (void)sendReply:(ANAnnouncementRequest *)a3 connection:(NSXPCConnection *)a4 completionHandler:(id)a5;
- (void)sendRequest:(id)a3 completion:(id)a4;
- (void)sendRequestLegacy:(id)a3 completion:(id)a4;
- (void)validateDestinationFromContext:(id)a3 reply:(id)a4;
@end

@implementation ANAnnounceServiceListener

- (ANAnnounceServiceListener)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ANAnnounceServiceListener;
  v2 = [(ANAnnounceServiceListener *)&v9 init];
  if (v2)
  {
    [MEMORY[0x277CEAB38] isAnnounceEnabled];
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEAA38]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v6 = ANLogHandleAnnounceServiceListener();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@Announce Service Listener Up!", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)cleanForExit
{
  v2 = [(ANAnnounceServiceListener *)self listener];
  [v2 invalidate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ANLogHandleAnnounceServiceListener();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "processIdentifier")}];
    v10 = [v7 serviceName];
    *buf = 138412802;
    v33 = &stru_2851BDB18;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@New Connection Request From (PID = %@) For Service: (%@)", buf, 0x20u);
  }

  if (([MEMORY[0x277CEAB38] isAnnounceEnabled] & 1) == 0)
  {
    v11 = ANLogHandleAnnounceServiceListener();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = &stru_2851BDB18;
      v21 = "%@Rejecting connection. Announce not enabled.";
      v22 = v11;
      v23 = 12;
LABEL_12:
      _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  if (([v7 hasAnnounceEntitlement] & 1) == 0)
  {
    v11 = ANLogHandleAnnounceServiceListener();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v24 = *MEMORY[0x277CEAC10];
      *buf = 138412546;
      v33 = &stru_2851BDB18;
      v34 = 2112;
      v35 = v24;
      v21 = "%@Missing Announce Entitlement: %@";
      v22 = v11;
      v23 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v11 = [MEMORY[0x277CCAE90] an_announceServiceInterface];
  [v11 setClass:objc_opt_class() forSelector:sel_localParticipant_ argumentIndex:0 ofReply:1];
  [v11 setClass:objc_opt_class() forSelector:sel_homeNamesForContext_reply_ argumentIndex:0 ofReply:0];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v11 setClasses:v14 forSelector:sel_homeNamesForContext_reply_ argumentIndex:0 ofReply:1];
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v11 setClasses:v17 forSelector:sel_getReceivedAnnouncementsForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
  [v11 setClasses:v17 forSelector:sel_getUnplayedAnnouncementsForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
  v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v11 setClasses:v18 forSelector:sel_announcementForID_endpointID_reply_ argumentIndex:0 ofReply:1];
  [v11 setClasses:v18 forSelector:sel_mockAnnouncement_forHomeWithName_playbackDeadline_completion_ argumentIndex:0 ofReply:1];
  [v11 setClasses:v18 forSelector:sel_contextFromAnnouncement_reply_ argumentIndex:0 ofReply:0];
  [v11 setClass:objc_opt_class() forSelector:sel_contextFromAnnouncement_reply_ argumentIndex:0 ofReply:1];
  [v11 setClass:objc_opt_class() forSelector:sel_sendRequest_completion_ argumentIndex:0 ofReply:0];
  [v11 setClass:objc_opt_class() forSelector:sel_sendRequest_completion_ argumentIndex:0 ofReply:1];
  [v11 setClass:objc_opt_class() forSelector:sel_sendRequestLegacy_completion_ argumentIndex:0 ofReply:0];
  [v11 setClass:objc_opt_class() forSelector:sel_sendRequestLegacy_completion_ argumentIndex:0 ofReply:1];
  [v7 setExportedInterface:v11];
  [v7 setExportedObject:self];
  objc_initWeak(&location, v7);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__ANAnnounceServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v29[3] = &unk_278C86580;
  objc_copyWeak(&v30, &location);
  [v7 setInterruptionHandler:v29];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__ANAnnounceServiceListener_listener_shouldAcceptNewConnection___block_invoke_35;
  v27[3] = &unk_278C86580;
  objc_copyWeak(&v28, &location);
  [v7 setInvalidationHandler:v27];
  [v7 resume];
  v19 = ANLogHandleAnnounceServiceListener();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = &stru_2851BDB18;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Connection Accepted: (%@)", buf, 0x16u);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  v20 = 1;
LABEL_14:

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

void __64__ANAnnounceServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounceServiceListener();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138412546;
    v6 = &stru_2851BDB18;
    v7 = 2112;
    v8 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Interrupted: (%@)", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __64__ANAnnounceServiceListener_listener_shouldAcceptNewConnection___block_invoke_35(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounceServiceListener();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138412546;
    v6 = &stru_2851BDB18;
    v7 = 2112;
    v8 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Invalidated: (%@)", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)localParticipant:(id)a3
{
  v4 = a3;
  v6 = +[ANAnnouncementCoordinator sharedCoordinator];
  v5 = [v6 localParticipant];
  (*(a3 + 2))(v4, v5);
}

- (void)sendRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 destination];
  v9 = [v8 type];

  if (v9 < 2)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__ANAnnounceServiceListener_sendRequest_completion___block_invoke;
    v14[3] = &unk_278C865A8;
    v14[4] = self;
    v15 = v6;
    v16 = v7;
    [(ANAnnounceServiceListener *)self _sendRequest:v15 completion:v14];

    v10 = v15;
LABEL_6:

    goto LABEL_7;
  }

  if (v9 == 2)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__ANAnnounceServiceListener_sendRequest_completion___block_invoke_2;
    v11[3] = &unk_278C865A8;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [(ANAnnounceServiceListener *)self _sendReplyRequest:v12 completion:v11];

    v10 = v12;
    goto LABEL_6;
  }

  [(ANAnnounceServiceListener *)self _handleError:1045 request:v6 requestSentCompletionHandler:v7];
LABEL_7:
}

- (void)sendRequestLegacy:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 destination];
  v8 = [v7 type];

  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      [(ANAnnounceServiceListener *)self _sendReplyRequest:v9 completion:v6];
    }

    else
    {
      [(ANAnnounceServiceListener *)self _handleError:1045 request:v9 sentCompletionHandler:v6];
    }
  }

  else
  {
    [(ANAnnounceServiceListener *)self _sendRequest:v9 completion:v6];
  }
}

- (void)mockAnnouncement:(id)a3 forHomeWithName:(id)a4 playbackDeadline:(id)a5 completion:(id)a6
{
  v20 = a3;
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = +[ANHomeManager shared];
  v13 = [v12 homeWithName:v11];

  if (v13)
  {
    v14 = [MEMORY[0x277CEAB50] contentWithAudioFileURL:v20];
    v15 = MEMORY[0x277CEAB68];
    v16 = [v13 uniqueIdentifier];
    v17 = [v15 destinationWithHomeIdentifier:v16];

    v18 = [MEMORY[0x277CEAB70] requestWithContent:v14 destination:v17];
    [v18 setClientID:@"Mock"];
    v19 = +[ANAnnouncementCoordinator sharedCoordinator];
    [v19 mockAnnouncement:v18 playbackDeadline:v9 sentHandler:v10];

    v10 = v17;
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9D0]];
    (*(v10 + 2))(v10, 0, v14);
  }
}

- (void)receivedAnnouncementIdentifiersForEndpointID:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ANAnnouncementCoordinator sharedCoordinator];
  v9 = [v7 allAnnouncementsSortedByReceiptForEndpointID:v6];

  v8 = [v9 identifiers];
  v5[2](v5, v8);
}

- (void)announcementForID:(id)a3 endpointID:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ANAnnouncementCoordinator sharedCoordinator];
  v11 = [v10 announcementForID:v9 endpointID:v8];

  v7[2](v7, v11);
}

- (void)getReceivedAnnouncementsForEndpointID:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ANAnnouncementCoordinator sharedCoordinator];
  [v7 resetAllTimersForEndpointID:v6];

  v8 = +[ANAnnouncementCoordinator sharedCoordinator];
  v10 = [v8 allAnnouncementsSortedByReceiptForEndpointID:v6];

  v9 = [MEMORY[0x277CEAB48] contextsFrom:v10];
  v5[2](v5, v9);
}

- (void)getUnplayedAnnouncementsForEndpointID:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[ANAnnouncementCoordinator sharedCoordinator];
  [v7 resetAllTimersForEndpointID:v5];

  v8 = objc_opt_new();
  v9 = +[ANAnnouncementCoordinator sharedCoordinator];
  v10 = [v9 allAnnouncementsSortedByReceiptForEndpointID:v5];
  v11 = [v10 unplayedAnnouncements];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = MEMORY[0x277CEAB58];
        v18 = [*(*(&v21 + 1) + 8 * v16) remoteSessionDictionary];
        v19 = [v17 contextFromDictionary:v18];
        [v8 addObject:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v6[2](v6, v8);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)getScanningDeviceCandidates:(id)a3
{
  v4 = a3;
  v6 = +[ANAnnouncementCoordinator sharedCoordinator];
  v5 = [v6 scanningDeviceCandidates];
  (*(a3 + 2))(v4, v5);
}

- (void)contextFromAnnouncement:(id)a3 reply:(id)a4
{
  v6 = MEMORY[0x277CEAB58];
  v7 = a4;
  v9 = [a3 remoteSessionDictionary];
  v8 = [v6 contextFromDictionary:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)homeNamesForContext:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = +[ANHomeManager shared];
  v8 = [v9 homeNamesForContext:v7];

  (*(a4 + 2))(v6, v8);
}

- (void)isLocalDeviceInRoom:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = +[ANHomeManager shared];
  v8 = [v9 isLocalDeviceInRoom:v7];

  (*(a4 + 2))(v6, v8);
}

- (void)isAnnounceEnabledForAnyAccessoryInHome:(id)a3 reply:(id)a4
{
  v9 = a4;
  v5 = a3;
  v6 = +[ANHomeManager shared];
  v7 = [v6 homeWithName:v5];

  if (v7)
  {
    v8 = [v7 isAnnounceEnabledForAnyAccessory];
  }

  else
  {
    v8 = 0;
  }

  v9[2](v9, v8);
}

- (void)isAnnounceEnabledForAnyAccessoryOrUserInHome:(id)a3 reply:(id)a4
{
  v9 = a4;
  v5 = a3;
  v6 = +[ANHomeManager shared];
  v7 = [v6 homeWithName:v5];

  if (v7)
  {
    v8 = [v7 isAnnounceEnabledForAnyAccessoryOrUser];
  }

  else
  {
    v8 = 0;
  }

  v9[2](v9, v8);
}

- (void)isEndpointWithUUID:(id)a3 inRoomWithName:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = +[ANHomeManager shared];
  v11 = [v12 isEndpointWithUUID:v10 inRoomWithName:v9];

  (*(a5 + 2))(v8, v11);
}

- (void)prewarm:(id)a3
{
  v3 = a3;
  v4 = +[ANRapportConnection sharedConnection];
  [v4 activateLinkWithOptions:2 completion:v3];
}

- (void)validateDestinationFromContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [ANValidationHelper performPreflightChecksForSendingAnnouncementToHomeContext:a3];
  v5[2](v5, v6);
}

- (void)_sendRequest:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277CCAE80];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentConnection];
  [(ANAnnounceServiceListener *)self send:v8 connection:v9 completionHandler:v7];
}

- (void)_sendReplyRequest:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277CCAE80];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentConnection];
  [(ANAnnounceServiceListener *)self sendReply:v8 connection:v9 completionHandler:v7];
}

- (void)_handleError:(int64_t)a3 request:(id)a4 sentCompletionHandler:(id)a5
{
  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CEA9D0];
  v10 = a5;
  v11 = a4;
  v12 = [v8 an_errorWithCode:a3 component:v9];
  (*(a5 + 2))(v10, 0, v12);

  v16 = +[ANAnalytics shared];
  v13 = [v11 content];

  v14 = [v13 endpointIdentifier];
  v15 = [ANAnalyticsContext contextWithEndpointID:v14];
  [v16 error:a3 context:v15];
}

- (void)_handleError:(int64_t)a3 request:(id)a4 requestSentCompletionHandler:(id)a5
{
  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CEA9D0];
  v10 = a5;
  v11 = a4;
  v12 = [v8 an_errorWithCode:a3 component:v9];
  (*(a5 + 2))(v10, 0, v12);

  v16 = +[ANAnalytics shared];
  v13 = [v11 content];

  v14 = [v13 endpointIdentifier];
  v15 = [ANAnalyticsContext contextWithEndpointID:v14];
  [v16 error:a3 context:v15];
}

- (void)_translateSentHandlerResponseAnnouncement:(id)a3 request:(id)a4 error:(id)a5 toRequestSentHandler:(id)a6
{
  v27 = a5;
  v9 = a6;
  if (a3)
  {
    v10 = MEMORY[0x277CEAB58];
    v11 = a4;
    v12 = a3;
    v13 = [v12 remoteSessionDictionary];
    v14 = [v10 contextFromDictionary:v13];

    v15 = MEMORY[0x277CEAB68];
    v16 = [v14 homeName];
    v17 = [v14 zones];
    v18 = [v17 allValues];
    v19 = [v14 rooms];
    v20 = [v19 allValues];
    v21 = [v15 destinationWithHomeName:v16 zoneNames:v18 roomNames:v20];

    v22 = [v11 destination];

    v23 = [v22 announcementIdentifier];
    [v21 setAnnouncementIdentifier:v23];

    v24 = MEMORY[0x277CEAB78];
    v25 = [v12 identifier];

    v26 = [v24 resultWithAnnouncementID:v25 destination:v21];
  }

  else
  {
    v26 = 0;
  }

  v9[2](v9, v26, v27);
}

- (void)send:(ANAnnouncementRequest *)a3 connection:(NSXPCConnection *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E8, &qword_23F58D708);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23F5883B4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23F58E100;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23F58E108;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_23F57A118(0, 0, v12, &unk_23F58E110, v17);
}

- (void)sendReply:(ANAnnouncementRequest *)a3 connection:(NSXPCConnection *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E8, &qword_23F58D708);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23F5883B4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23F58E0C8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23F58D720;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_23F57A118(0, 0, v12, &unk_23F58D728, v17);
}

@end