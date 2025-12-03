@interface ANMessenger
+ (BOOL)_isAnnouncerAdminInAnnouncement:(id)announcement home:(id)home;
+ (id)_performPreflightChecksForSendingContent:(id)content toHome:(id)home;
+ (id)_performPreflightChecksForSendingToRooms:(id)rooms zones:(id)zones;
+ (id)announcementForDevice:(id)device inHome:(id)home fromAnnouncement:(id)announcement;
+ (id)announcementForUser:(id)user inHome:(id)home fromAnnouncement:(id)announcement;
+ (id)createAnnouncementWithRequest:(id)request forLocation:(id)location inHome:(id)home isReply:(BOOL)reply error:(id *)error;
+ (id)locationForHome:(id)home rooms:(id)rooms zones:(id)zones idsService:(id)service;
+ (id)locationForReplyToAnnouncement:(id)announcement home:(id)home idsService:(id)service;
+ (id)performBasicValidationForAnnouncement:(id)announcement type:(unint64_t)type;
+ (id)performIDSValidationForAnnouncement:(id)announcement withSenderContext:(id)context;
+ (id)performPreflightChecksForSendingAnnouncementToHome:(id)home rooms:(id)rooms zones:(id)zones;
+ (id)performPreflightChecksForSendingContent:(id)content toHome:(id)home rooms:(id)rooms zones:(id)zones;
+ (id)validateAnnouncerInAnnouncement:(id)announcement home:(id)home;
+ (void)_setIdentifiersForIDSService:(id)service inLocation:(id)location home:(id)home;
- (ANMessenger)init;
- (ANMessenger)initWithIDSConnection:(id)connection rapportConnection:(id)rapportConnection;
- (ANMessengerDelegate)delegate;
- (ANParticipant)localParticipant;
- (BOOL)_willTargetReachableDevicesForAnnouncement:(id)announcement inDestination:(id)destination;
- (double)_calculateAnnouncementDeadline:(id)deadline;
- (id)connectionDidReceiveRequestForHomeLocationStatus:(id)status;
- (id)getScanningDeviceCandidates;
- (void)_forwardRelayRequest:(id)request withSenderContext:(id)context sentHandler:(id)handler;
- (void)_fulfillRelayRequest:(id)request withSenderContext:(id)context sentHandler:(id)handler;
- (void)_logDebugInfoForHome:(id)home;
- (void)_relayAnnouncementThroughHomePod:(id)pod inHome:(id)home rooms:(id)rooms sentHandler:(id)handler;
- (void)_sendAnnouncement:(id)announcement toDestination:(id)destination sentHandler:(id)handler;
- (void)broadcastReply:(id)reply forAnnouncement:(id)announcement completion:(id)completion;
- (void)cleanForExit;
- (void)connection:(id)connection didReceiveMessage:(id)message fromSender:(id)sender senderContext:(id)context handler:(id)handler;
- (void)connection:(id)connection failedDeliveryForMessage:(id)message withError:(id)error;
- (void)forwardAnnouncementToCompanion:(id)companion;
- (void)mockAnnouncement:(id)announcement playbackDeadline:(id)deadline sentHandler:(id)handler;
- (void)sendAnnouncement:(id)announcement isRetry:(BOOL)retry sentHandler:(id)handler;
- (void)sendReply:(id)reply forAnnouncement:(id)announcement completion:(id)completion;
- (void)sendRequest:(id)request sentHandler:(id)handler;
@end

@implementation ANMessenger

- (ANMessenger)init
{
  v3 = objc_opt_new();
  v4 = +[ANRapportConnection sharedConnection];
  v5 = [(ANMessenger *)self initWithIDSConnection:v3 rapportConnection:v4];

  return v5;
}

- (ANMessenger)initWithIDSConnection:(id)connection rapportConnection:(id)rapportConnection
{
  connectionCopy = connection;
  rapportConnectionCopy = rapportConnection;
  v13.receiver = self;
  v13.super_class = ANMessenger;
  v9 = [(ANMessenger *)&v13 init];
  if (v9)
  {
    v10 = ANLogWithCategory();
    log = v9->_log;
    v9->_log = v10;

    objc_storeStrong(&v9->_idsConnection, connection);
    [(ANIDSConnectionProvider *)v9->_idsConnection setDelegate:v9];
    objc_storeStrong(&v9->_rapportConnection, rapportConnection);
    [(ANRapportConnectionProvider *)v9->_rapportConnection setDelegate:v9];
    +[ANMessenger purgeTemporaryFiles];
  }

  return v9;
}

- (void)cleanForExit
{
  rapportConnection = [(ANMessenger *)self rapportConnection];
  [rapportConnection deactivateLinkWithOptions:1];
}

- (ANParticipant)localParticipant
{
  v3 = objc_opt_new();
  rapportConnection = [(ANMessenger *)self rapportConnection];
  localDevice = [rapportConnection localDevice];
  [v3 populateWithDevice:localDevice];

  return v3;
}

- (void)sendRequest:(id)request sentHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  destination = [requestCopy destination];
  type = [destination type];

  if (type >= 2)
  {
    if (type == 2)
    {
      destination2 = [requestCopy destination];
      replyToSender = [destination2 replyToSender];

      destination3 = [requestCopy destination];
      announcement = [destination3 announcement];
      if (replyToSender)
      {
        [(ANMessenger *)self sendReply:requestCopy forAnnouncement:announcement completion:handlerCopy];
      }

      else
      {
        [(ANMessenger *)self broadcastReply:requestCopy forAnnouncement:announcement completion:handlerCopy];
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] an_errorWithCode:1045 component:*MEMORY[0x277CEA9B8]];
      handlerCopy[2](handlerCopy, 0, v13);
    }
  }

  else
  {
    [(ANMessenger *)self sendAnnouncement:requestCopy sentHandler:handlerCopy];
  }
}

- (void)sendAnnouncement:(id)announcement isRetry:(BOOL)retry sentHandler:(id)handler
{
  retryCopy = retry;
  v69 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  handlerCopy = handler;
  destination = [announcementCopy destination];
  home = [destination home];

  if (home)
  {
    destination2 = [announcementCopy destination];
    rooms = [destination2 rooms];

    destination3 = [announcementCopy destination];
    zones = [destination3 zones];

    content = [announcementCopy content];
    v57 = zones;
    v17 = [ANValidationHelper performPreflightChecksForSendingContent:content toHome:home rooms:rooms zones:zones];
    if (v17)
    {
      v18 = v17;
      v19 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v62 = home;
        v63 = 2112;
        v64 = rooms;
        v65 = 2112;
        v66 = v57;
        v67 = 2112;
        v68 = v18;
        _os_log_error_impl(&dword_23F525000, v19, OS_LOG_TYPE_ERROR, "Failed preflight check. Home = %@, Rooms = %@, Zones = %@, Error = %@", buf, 0x2Au);
      }

      handlerCopy[2](handlerCopy, 0, v18);
      v20 = +[ANAnalytics shared];
      code = [v18 code];
      endpointIdentifier = [content endpointIdentifier];
      v23 = [ANAnalyticsContext contextWithEndpointID:endpointIdentifier];
      [v20 error:code context:v23];
    }

    else
    {
      v56 = content;
      idsConnection = [(ANMessenger *)self idsConnection];
      service = [idsConnection service];
      v20 = [ANMessenger locationForHome:home rooms:rooms zones:v57 idsService:service];

      v58 = 0;
      endpointIdentifier = [ANMessenger createAnnouncementWithRequest:announcementCopy forLocation:v20 inHome:home isReply:0 error:&v58];
      v18 = v58;
      if (endpointIdentifier)
      {
        flags = [v20 flags];
        v23 = [MEMORY[0x277CD1F50] hmu_roomsInZones:v57 appendingRooms:rooms];
        if (+[ANDemoStateManager isStoreDemoModeEnabled])
        {
          v28 = [(ANMessenger *)self log];
          content = v56;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "Demo Mode is Enabled. Will succeed without actually sending message", buf, 2u);
          }

          (handlerCopy)[2](handlerCopy, endpointIdentifier, 0);
        }

        else
        {
          v52 = flags;
          content = v56;
          if ([endpointIdentifier isRelayRequest])
          {
            v50 = [(ANMessenger *)self log];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v36 = @"Everyone";
              if ((v52 & 1) == 0)
              {
                v36 = @"Rooms/Zones";
              }

              *buf = 138412290;
              v62 = v36;
              _os_log_impl(&dword_23F525000, v50, OS_LOG_TYPE_DEFAULT, "Sending (Announce To %@) Relay Request", buf, 0xCu);
            }

            [(ANMessenger *)self _relayAnnouncementThroughHomePod:endpointIdentifier inHome:home rooms:v23 sentHandler:handlerCopy];
          }

          else
          {
            if (v52)
            {
              homeKitUserIdentifier = [v56 homeKitUserIdentifier];

              if (homeKitUserIdentifier && ([v56 homeKitUserIdentifier], v39 = objc_claimAutoreleasedReturnValue(), -[__CFString hmu_userWithUniqueIdentifier:](home, "hmu_userWithUniqueIdentifier:", v39), v49 = objc_claimAutoreleasedReturnValue(), v39, v49))
              {
                v60 = v49;
                v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
              }

              else
              {
                v49 = 0;
                v51 = MEMORY[0x277CBEBF8];
              }

              v48 = +[ANHomeManager shared];
              currentAccessory = [v48 currentAccessory];
              v55 = rooms;
              if (currentAccessory)
              {
                v46 = currentAccessory;
                endpointIdentifier2 = [v56 endpointIdentifier];
                if (endpointIdentifier2)
                {
                  v42 = MEMORY[0x277CBEBF8];
                }

                else
                {
                  v45 = +[ANHomeManager shared];
                  currentAccessory2 = [v45 currentAccessory];
                  v59 = currentAccessory2;
                  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];

                  endpointIdentifier2 = 0;
                }

                v47 = v42;

                currentAccessory = v46;
              }

              else
              {
                v47 = MEMORY[0x277CBEBF8];
              }

              rapportConnection = [(ANMessenger *)self rapportConnection];
              v53 = [ANMessengerDestination destinationForHome:home excludingUsers:v51 excludingAccessories:v47 rapportConnection:rapportConnection];

              rooms = v55;
              rapportConnection2 = v49;
            }

            else
            {
              rapportConnection2 = [(ANMessenger *)self rapportConnection];
              v53 = [ANMessengerDestination destinationForAccessoriesInHome:home rooms:v23 rapportConnection:rapportConnection2];
            }

            [(ANMessenger *)self _sendAnnouncement:endpointIdentifier toDestination:v53 sentHandler:handlerCopy];
            content = v56;
          }
        }
      }

      else
      {
        handlerCopy[2](handlerCopy, 0, v18);
        v23 = +[ANAnalytics shared];
        code2 = [v18 code];
        [content endpointIdentifier];
        v34 = v54 = rooms;
        v35 = [ANAnalyticsContext contextWithEndpointID:v34];
        [v23 error:code2 context:v35];

        content = v56;
        rooms = v54;
      }
    }
  }

  else if (retryCopy)
  {
    v24 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9B8]];
    handlerCopy[2](handlerCopy, 0, v24);
  }

  else
  {
    v29 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v29, OS_LOG_TYPE_DEFAULT, "Home is nil for sendAnnouncement, refreshing Home Manager and retrying", buf, 2u);
    }

    v30 = +[ANHomeManager shared];
    refreshHomeSynchronous = [v30 refreshHomeSynchronous];

    [(ANMessenger *)self sendAnnouncement:announcementCopy isRetry:1 sentHandler:handlerCopy];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)sendReply:(id)reply forAnnouncement:(id)announcement completion:(id)completion
{
  replyCopy = reply;
  announcementCopy = announcement;
  completionCopy = completion;
  v11 = +[ANHomeManager shared];
  location = [announcementCopy location];
  homeUUID = [location homeUUID];
  v14 = [v11 homeForID:homeUUID];

  location2 = [announcementCopy location];
  v16 = [location2 copy];

  [v16 setFlags:0];
  v37 = v16;
  v38 = 0;
  v17 = [ANMessenger createAnnouncementWithRequest:replyCopy forLocation:v16 inHome:v14 isReply:1 error:&v38];
  v18 = v38;
  v19 = v18;
  if (v17)
  {
    v33 = v18;
    selfCopy = self;
    v35 = replyCopy;
    v20 = objc_opt_new();
    announcer = [announcementCopy announcer];
    isAccessory = [announcer isAccessory];

    announcer2 = [announcementCopy announcer];
    homeKitID = [announcer2 homeKitID];
    if (isAccessory)
    {
      v25 = [v14 hmu_accessoryWithUniqueIdentifierUUIDString:homeKitID];

      if (v25)
      {
        [v20 addAccessory:v25];
      }
    }

    else
    {
      v25 = [v14 hmu_userWithUniqueIdentifierUUIDString:homeKitID];

      if (v25)
      {
        [v20 addUser:v25 inHome:v14];
      }
    }

    v29 = v35;

    [(ANMessenger *)selfCopy _sendAnnouncement:v17 toDestination:v20 sentHandler:completionCopy];
    v19 = v33;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v18);
    v20 = +[ANAnalytics shared];
    v36 = v14;
    v26 = completionCopy;
    code = [v19 code];
    content = [replyCopy content];
    [content endpointIdentifier];
    v30 = v29 = replyCopy;
    v31 = [ANAnalyticsContext contextWithEndpointID:v30];
    v32 = code;
    completionCopy = v26;
    v14 = v36;
    [v20 error:v32 context:v31];
  }
}

- (void)broadcastReply:(id)reply forAnnouncement:(id)announcement completion:(id)completion
{
  v90 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  announcementCopy = announcement;
  completionCopy = completion;
  v9 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [announcementCopy identifier];
    *buf = 138412290;
    v89 = identifier;
    _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Replying to Announcement: %@", buf, 0xCu);
  }

  v11 = +[ANHomeManager shared];
  location = [announcementCopy location];
  homeUUID = [location homeUUID];
  v14 = [v11 homeForID:homeUUID];

  idsConnection = [(ANMessenger *)self idsConnection];
  service = [idsConnection service];
  v17 = [ANMessenger locationForReplyToAnnouncement:announcementCopy home:v14 idsService:service];

  v85 = 0;
  v18 = [ANMessenger createAnnouncementWithRequest:replyCopy forLocation:v17 inHome:v14 isReply:1 error:&v85];
  v19 = v85;
  v20 = v19;
  v83 = v17;
  if (!v18)
  {
    v37 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, v19);
    v22 = +[ANAnalytics shared];
    v40 = v20;
    code = [v20 code];
    content = [replyCopy content];
    endpointIdentifier = [content endpointIdentifier];
    v42 = [ANAnalyticsContext contextWithEndpointID:endpointIdentifier];
    v43 = code;
    v38 = v40;
    [v22 error:v43 context:v42];

    goto LABEL_40;
  }

  v80 = v19;
  v21 = [v17 allRoomsInHome:v14];
  v22 = [v21 mutableCopy];

  announcer = [v18 announcer];
  homeKitID = [announcer homeKitID];

  v81 = homeKitID;
  if (homeKitID)
  {
    announcer2 = [v18 announcer];
    isAccessory = [announcer2 isAccessory];

    if (isAccessory)
    {
      v27 = [v14 hmu_accessoryWithUniqueIdentifierUUIDString:v81];
      room = [v27 room];

      if (room)
      {
        roomUUIDs = [v17 roomUUIDs];
        v30 = v22;
        v31 = [roomUUIDs mutableCopy];

        uniqueIdentifier = [room uniqueIdentifier];
        [v31 removeObject:uniqueIdentifier];

        v33 = [v31 copy];
        [v83 setRoomUUIDs:v33];

        [v30 removeObject:room];
        v22 = v30;
      }
    }
  }

  if (![v18 isRelayRequest])
  {
    content2 = [replyCopy content];
    location2 = [v18 location];
    flags = [location2 flags];

    v78 = content2;
    v79 = v22;
    if (flags)
    {
      homeKitUserIdentifier = [content2 homeKitUserIdentifier];

      if (homeKitUserIdentifier && ([content2 homeKitUserIdentifier], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "hmu_userWithUniqueIdentifier:", v55), v56 = objc_claimAutoreleasedReturnValue(), v55, v56))
      {
        v76 = v56;
        v87 = v56;
        v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
      }

      else
      {
        v76 = 0;
        v57 = MEMORY[0x277CBEBF8];
      }

      v58 = +[ANHomeManager shared];
      currentAccessory = [v58 currentAccessory];
      if (currentAccessory)
      {
        endpointIdentifier2 = [content2 endpointIdentifier];
        if (endpointIdentifier2)
        {
          v61 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v64 = +[ANHomeManager shared];
          currentAccessory2 = [v64 currentAccessory];
          v86 = currentAccessory2;
          v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
        }
      }

      else
      {
        v61 = MEMORY[0x277CBEBF8];
      }

      rapportConnection = [(ANMessenger *)self rapportConnection];
      rapportConnection3 = v57;
      endpointIdentifier = [ANMessengerDestination destinationForHome:v14 excludingUsers:v57 excludingAccessories:v61 rapportConnection:rapportConnection];

      v38 = v80;
      content = v81;
      v63 = v76;
      goto LABEL_37;
    }

    v47 = [v22 copy];
    rapportConnection2 = [(ANMessenger *)self rapportConnection];
    endpointIdentifier = [ANMessengerDestination destinationForAccessoriesInHome:v14 rooms:v47 rapportConnection:rapportConnection2];

    announcer3 = [announcementCopy announcer];
    homeKitUserID = [announcer3 homeKitUserID];

    announcer4 = [announcementCopy announcer];
    announcer5 = announcer4;
    if (homeKitUserID)
    {
      homeKitUserID2 = [announcer4 homeKitUserID];
    }

    else
    {
      isAccessory2 = [announcer4 isAccessory];

      if (isAccessory2)
      {
        v63 = 0;
        goto LABEL_32;
      }

      announcer5 = [announcementCopy announcer];
      homeKitUserID2 = [announcer5 homeKitID];
    }

    v67 = homeKitUserID2;
    v63 = [v14 hmu_userWithUniqueIdentifierUUIDString:homeKitUserID2];

LABEL_32:
    homeKitUserIdentifier2 = [content2 homeKitUserIdentifier];
    if (homeKitUserIdentifier2)
    {
      v69 = homeKitUserIdentifier2;
      homeKitUserIdentifier3 = [content2 homeKitUserIdentifier];
      uUIDString = [homeKitUserIdentifier3 UUIDString];
      announcer6 = [announcementCopy announcer];
      homeKitUserID3 = [announcer6 homeKitUserID];
      LODWORD(currentAccessory2) = [uUIDString isEqualToString:homeKitUserID3];

      if (currentAccessory2)
      {
        v38 = v80;
        content = v81;
LABEL_38:

LABEL_39:
        selfCopy = self;
        v37 = completionCopy;
        [(ANMessenger *)selfCopy _sendAnnouncement:v18 toDestination:endpointIdentifier sentHandler:completionCopy, currentAccessory2];

        v22 = v79;
        goto LABEL_40;
      }
    }

    if (!v63)
    {
      v38 = v80;
      content = v81;
      goto LABEL_39;
    }

    rapportConnection3 = [(ANMessenger *)self rapportConnection];
    [endpointIdentifier addUser:v63 inHome:v14 rapportConnection:rapportConnection3];
    v38 = v80;
    content = v81;
LABEL_37:

    goto LABEL_38;
  }

  v34 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23F525000, v34, OS_LOG_TYPE_DEFAULT, "Sending (Reply) Relay Request", buf, 2u);
  }

  endpointIdentifier = [v22 copy];
  selfCopy2 = self;
  v37 = completionCopy;
  [(ANMessenger *)selfCopy2 _relayAnnouncementThroughHomePod:v18 inHome:v14 rooms:endpointIdentifier sentHandler:completionCopy];
  v38 = v80;
  content = v81;
LABEL_40:

  v74 = *MEMORY[0x277D85DE8];
}

- (void)forwardAnnouncementToCompanion:(id)companion
{
  v30 = *MEMORY[0x277D85DE8];
  companionCopy = companion;
  rapportConnection = [(ANMessenger *)self rapportConnection];
  devices = [rapportConnection devices];
  pairedCompanion = [devices pairedCompanion];

  if (pairedCompanion && [pairedCompanion supportsAnnounce])
  {
    v8 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      name = [pairedCompanion name];
      *buf = 138412290;
      v29 = name;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "Forwarding announcement to companion %@", buf, 0xCu);
    }

    v10 = +[ANHomeManager shared];
    location = [companionCopy location];
    homeUUID = [location homeUUID];
    v13 = [v10 homeForID:homeUUID];

    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "homeLocationStatus")}];
      location2 = [companionCopy location];
      [location2 setHomeLocationStatus:v14];

      v16 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        homeLocationStatus = [v13 homeLocationStatus];
        *buf = 134217984;
        v29 = homeLocationStatus;
        _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_INFO, "Inserted Home Location Status: %ld", buf, 0xCu);
      }

      v18 = [companionCopy announcerNameInHome:v13];
      v19 = ANLocalizedString();
      v20 = [v18 isEqualToString:v19];

      if ((v20 & 1) == 0)
      {
        announcer = [companionCopy announcer];
        [announcer setName:v18];
      }
    }

    rapportConnection2 = [(ANMessenger *)self rapportConnection];
    messageForCompanion = [companionCopy messageForCompanion];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __46__ANMessenger_forwardAnnouncementToCompanion___block_invoke;
    v27[3] = &unk_278C862B8;
    v27[4] = self;
    v24 = [rapportConnection2 sendMessage:messageForCompanion device:pairedCompanion responseHandler:v27];

    if (v24)
    {
      v25 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(ANMessenger *)pairedCompanion forwardAnnouncementToCompanion:v24, v25];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __46__ANMessenger_forwardAnnouncementToCompanion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "Announcement forwarded to companion over rapport: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)mockAnnouncement:(id)announcement playbackDeadline:(id)deadline sentHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  deadlineCopy = deadline;
  handlerCopy = handler;
  destination = [announcementCopy destination];
  home = [destination home];

  if (home)
  {
    v13 = objc_alloc(MEMORY[0x277CEABA8]);
    uniqueIdentifier = [home uniqueIdentifier];
    v15 = [v13 initWithHomeID:uniqueIdentifier];

    [v15 setFlags:1];
    v32 = 0;
    v16 = [ANMessenger createAnnouncementWithRequest:announcementCopy forLocation:v15 inHome:home isReply:1 error:&v32];
    v17 = v32;
    if (v16)
    {
      [v16 setPlaybackDeadline:deadlineCopy];
      playbackDeadline = [v16 playbackDeadline];

      if (!playbackDeadline)
      {
        v19 = MEMORY[0x277CBEAA8];
        [(ANMessenger *)self _calculateAnnouncementDeadline:v16];
        v21 = v20;
        date = [MEMORY[0x277CBEAA8] date];
        v23 = [v19 dateWithTimeInterval:date sinceDate:v21];
        [v16 setPlaybackDeadline:v23];
      }

      v24 = [MEMORY[0x277CEABD0] senderWithID:&stru_2851BDB18 type:0];
      [v16 setSender:v24];

      v25 = objc_alloc(MEMORY[0x277CEAB48]);
      message = [v16 message];
      v27 = [v25 initWithMessage:message];

      v28 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v34 = "[ANMessenger mockAnnouncement:playbackDeadline:sentHandler:]";
        v35 = 2112;
        v36 = v27;
        _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "%s: Sending announcement: %@", buf, 0x16u);
      }

      delegate = [(ANMessenger *)self delegate];
      [delegate receivedAnnouncement:v27];

      handlerCopy[2](handlerCopy, v27, 0);
    }

    else
    {
      (handlerCopy)[2](handlerCopy, 0, v17);
    }
  }

  else
  {
    v30 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9B8]];
    (handlerCopy)[2](handlerCopy, 0, v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_relayAnnouncementThroughHomePod:(id)pod inHome:(id)home rooms:(id)rooms sentHandler:(id)handler
{
  podCopy = pod;
  handlerCopy = handler;
  roomsCopy = rooms;
  homeCopy = home;
  rapportConnection = [(ANMessenger *)self rapportConnection];
  v17 = 0;
  v15 = [ANMessengerDestination relayDestinationForHome:homeCopy rooms:roomsCopy rapportConnection:rapportConnection error:&v17];

  v16 = v17;
  if (v15)
  {
    [(ANMessenger *)self _sendAnnouncement:podCopy toDestination:v15 sentHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v16);

    handlerCopy = +[ANAnalytics shared];
    [handlerCopy error:{objc_msgSend(v16, "code")}];
  }
}

- (double)_calculateAnnouncementDeadline:(id)deadline
{
  v22 = *MEMORY[0x277D85DE8];
  deadlineCopy = deadline;
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v6 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA830]];
  [v6 doubleValue];
  v8 = v7;

  fileData = [deadlineCopy fileData];

  if (fileData)
  {
    fileData2 = [deadlineCopy fileData];
    v11 = [fileData2 length];

    v12 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "[ANMessenger _calculateAnnouncementDeadline:]";
      v18 = 2048;
      v19 = (v11 >> 10);
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%s: Calculate announcement deadline. fileSize: %f defaultDeadline: %f", &v16, 0x20u);
    }

    if ((v11 - 204800) >> 10 >= 0x65)
    {
      if (v11 < 0x32000)
      {
        v8 = v8 + -0.5;
      }

      else
      {
        v8 = v8 + 0.5;
      }
    }
  }

  else
  {
    v13 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ANMessenger _calculateAnnouncementDeadline:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_fulfillRelayRequest:(id)request withSenderContext:(id)context sentHandler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  action = [requestCopy action];
  if (action == 4)
  {
    v10 = 2;
  }

  else
  {
    if (action != 5)
    {
      goto LABEL_6;
    }

    v10 = 3;
  }

  [requestCopy setAction:v10];
LABEL_6:
  v11 = +[ANHomeManager shared];
  location = [requestCopy location];
  homeUUID = [location homeUUID];
  v14 = [v11 homeForID:homeUUID];

  location2 = [requestCopy location];
  if ([location2 flags])
  {
    announcer = [requestCopy announcer];
    homeKitID = [announcer homeKitID];
    v16 = [v14 hmu_userWithUniqueIdentifierUUIDString:homeKitID];

    if (v16)
    {
      v32[0] = v16;
      rapportConnection2 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    }

    else
    {
      rapportConnection2 = MEMORY[0x277CBEBF8];
    }

    rapportConnection = [(ANMessenger *)self rapportConnection];
    v22 = MEMORY[0x277CBEBF8];
    v18 = [ANMessengerDestination destinationForHome:v14 excludingUsers:rapportConnection2 excludingAccessories:MEMORY[0x277CBEBF8] rapportConnection:rapportConnection];

    [location2 setFlags:{objc_msgSend(location2, "flags") & 0xFFFFFFFFFFFFFFFDLL}];
    [location2 setFlags:{objc_msgSend(location2, "flags") & 0xFFFFFFFFFFFFFFFBLL}];
    [location2 setUserUUIDs:v22];
    [location2 setDeviceIDs:v22];
  }

  else
  {
    v16 = [location2 allRoomsInHome:v14];
    rapportConnection2 = [(ANMessenger *)self rapportConnection];
    v18 = [ANMessengerDestination destinationForAccessoriesInHome:v14 rooms:v16 rapportConnection:rapportConnection2];
  }

  v23 = MEMORY[0x277CBEAA8];
  [(ANMessenger *)self _calculateAnnouncementDeadline:requestCopy];
  v25 = v24;
  date = [MEMORY[0x277CBEAA8] date];
  v27 = [v23 dateWithTimeInterval:date sinceDate:v25];
  [requestCopy setPlaybackDeadline:v27];

  v31 = 0;
  [requestCopy processAudioWithEffects:objc_msgSend(MEMORY[0x277CEAB48] error:{"defaultAudioEffects"), &v31}];
  v28 = v31;
  if (v28)
  {
    v29 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [ANMessenger _fulfillRelayRequest:withSenderContext:sentHandler:];
    }
  }

  [(ANMessenger *)self _sendAnnouncement:requestCopy toDestination:v18 sentHandler:handlerCopy];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_forwardRelayRequest:(id)request withSenderContext:(id)context sentHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  rapportConnection = [(ANMessenger *)self rapportConnection];
  devices = [rapportConnection devices];
  pairedCompanion = [devices pairedCompanion];

  sender = [requestCopy sender];
  v12 = sender;
  if (pairedCompanion && sender)
  {
    identifier = [sender identifier];
    idsDeviceIdentifier = [pairedCompanion idsDeviceIdentifier];
    v15 = [identifier isEqualToString:idsDeviceIdentifier];

    if (v15)
    {
      v16 = +[ANHomeManager shared];
      location = [requestCopy location];
      homeUUID = [location homeUUID];
      v19 = [v16 homeForID:homeUUID];

      location2 = [requestCopy location];
      v21 = [location2 allRoomsInHome:v19];

      [(ANMessenger *)self _relayAnnouncementThroughHomePod:requestCopy inHome:v19 rooms:v21 sentHandler:handlerCopy];
    }

    else
    {
      v22 = MEMORY[0x277CCACA8];
      identifier2 = [v12 identifier];
      identifier3 = [pairedCompanion identifier];
      v19 = [v22 stringWithFormat:@"Sender is not companion: %@ != %@", identifier2, identifier3];

      v25 = [MEMORY[0x277CCA9B8] an_errorWithCode:1030 component:*MEMORY[0x277CEA9B8] description:v19];
      handlerCopy[2](handlerCopy, requestCopy, v25);
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] an_errorWithCode:1030 component:*MEMORY[0x277CEA9B8] description:@"Unable to validate sender"];
    handlerCopy[2](handlerCopy, requestCopy, v19);
  }
}

- (void)_sendAnnouncement:(id)announcement toDestination:(id)destination sentHandler:(id)handler
{
  v176 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  destinationCopy = destination;
  handlerCopy = handler;
  v146 = destinationCopy;
  home = [destinationCopy home];
  [(ANMessenger *)self _logDebugInfoForHome:home];

  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v13 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8E0]];

  if (v13)
  {
    v14 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ANMessenger _sendAnnouncement:toDestination:sentHandler:];
    }

    v15 = [MEMORY[0x277CCA9B8] an_errorWithCode:1036 component:*MEMORY[0x277CEA9B8] description:@"Force Send Failure Enabled in User Defaults"];
    handlerCopy[2](handlerCopy, 0, v15);
    goto LABEL_89;
  }

  playbackDeadline = [announcementCopy playbackDeadline];

  if (!playbackDeadline)
  {
    v17 = MEMORY[0x277CBEAA8];
    [(ANMessenger *)self _calculateAnnouncementDeadline:announcementCopy];
    v19 = v18;
    date = [MEMORY[0x277CBEAA8] date];
    v21 = [v17 dateWithTimeInterval:date sinceDate:v19];
    [announcementCopy setPlaybackDeadline:v21];
  }

  idsConnection = [(ANMessenger *)self idsConnection];
  service = [idsConnection service];
  v24 = [destinationCopy participantsWithService:service];
  [announcementCopy setListeners:v24];

  listeners = [announcementCopy listeners];
  v26 = [listeners count];

  v27 = +[ANHomeManager shared];
  currentAccessory = [v27 currentAccessory];

  if (!v26)
  {
    if (currentAccessory)
    {
      location = [announcementCopy location];
      if ([location flags])
      {
        home2 = [destinationCopy home];
        usersIncludingCurrentUserWithAnnounceEnabled = [home2 usersIncludingCurrentUserWithAnnounceEnabled];
        v126 = [usersIncludingCurrentUserWithAnnounceEnabled count];

        if (v126)
        {
          v31 = 1009;
        }

        else
        {
          v31 = 1043;
        }

        goto LABEL_86;
      }
    }

    v31 = 1009;
LABEL_86:
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CEA9B8];
    goto LABEL_87;
  }

  if (currentAccessory)
  {
    if (![(ANMessenger *)self _willTargetReachableDevicesForAnnouncement:announcementCopy inDestination:destinationCopy])
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CEA9B8];
      v31 = 1009;
LABEL_87:
      v15 = [v29 an_errorWithCode:v31 component:v30];
      handlerCopy[2](handlerCopy, 0, v15);
      v127 = +[ANAnalytics shared];
      code = [v15 code];
      announcer = [announcementCopy announcer];
      v130 = [ANAnalyticsContext contextWithAnnouncer:announcer];
      [v127 error:code context:v130];

LABEL_88:
LABEL_89:

      goto LABEL_90;
    }
  }

  else if ([announcementCopy isRelayRequest])
  {
    accessories = [destinationCopy accessories];
    v34 = [accessories count];

    if (v34)
    {
      accessories2 = [destinationCopy accessories];
      v169[0] = MEMORY[0x277D85DD0];
      v169[1] = 3221225472;
      v169[2] = __59__ANMessenger__sendAnnouncement_toDestination_sentHandler___block_invoke;
      v169[3] = &unk_278C862E0;
      v169[4] = self;
      v15 = [accessories2 hmu_compactMap:v169];

      if (![v15 count])
      {
        v132 = [(ANMessenger *)self log];
        if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          [ANMessenger _sendAnnouncement:destinationCopy toDestination:v132 sentHandler:?];
        }

        v127 = [MEMORY[0x277CCA9B8] an_errorWithCode:1009 component:*MEMORY[0x277CEA9B8]];
        handlerCopy[2](handlerCopy, 0, v127);
        v133 = +[ANAnalytics shared];
        [v133 error:{objc_msgSend(v127, "code")}];

        goto LABEL_88;
      }
    }
  }

  mEMORY[0x277CEAB80]2 = [MEMORY[0x277CEAB80] sharedInstance];
  v37 = [mEMORY[0x277CEAB80]2 numberForDefault:*MEMORY[0x277CEA958]];
  [v37 doubleValue];
  v39 = v38;

  mEMORY[0x277CEABF0] = [MEMORY[0x277CEABF0] sharedManager];
  [mEMORY[0x277CEABF0] transaction:*MEMORY[0x277CEAB18] setActiveForTimeInterval:v39];

  v41 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v173 = announcementCopy;
    _os_log_impl(&dword_23F525000, v41, OS_LOG_TYPE_DEFAULT, "Sending Message: %@", buf, 0xCu);
  }

  v134 = handlerCopy;

  v42 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    listeners2 = [announcementCopy listeners];
    v44 = [listeners2 count];
    *buf = 134217984;
    *v173 = v44;
    _os_log_impl(&dword_23F525000, v42, OS_LOG_TYPE_DEFAULT, "Sending To %lu Participants", buf, 0xCu);
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  listeners3 = [announcementCopy listeners];
  v46 = [listeners3 countByEnumeratingWithState:&v165 objects:v175 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v166;
    v49 = 1;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v166 != v48)
        {
          objc_enumerationMutation(listeners3);
        }

        v51 = *(*(&v165 + 1) + 8 * i);
        v52 = [(ANMessenger *)self log];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v173 = v49;
          *&v173[4] = 2112;
          *&v173[6] = v51;
          _os_log_impl(&dword_23F525000, v52, OS_LOG_TYPE_DEFAULT, "Participant %d: %@", buf, 0x12u);
        }

        ++v49;
      }

      v47 = [listeners3 countByEnumeratingWithState:&v165 objects:v175 count:16];
    }

    while (v47);
  }

  announcer2 = [announcementCopy announcer];
  v144 = [ANAnalyticsContext contextWithAnnouncer:announcer2];

  devices = [v146 devices];
  v143 = [devices count];

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = [v146 devices];
  v55 = [obj countByEnumeratingWithState:&v161 objects:v174 count:16];
  if (v55)
  {
    v56 = v55;
    v145 = 0;
    v140 = *v162;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v162 != v140)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v161 + 1) + 8 * j);
        home3 = [v146 home];
        v60 = [ANMessenger announcementForDevice:v58 inHome:home3 fromAnnouncement:announcementCopy];
        message = [v60 message];

        rapportConnection = [(ANMessenger *)self rapportConnection];
        v155[0] = MEMORY[0x277D85DD0];
        v155[1] = 3221225472;
        v155[2] = __59__ANMessenger__sendAnnouncement_toDestination_sentHandler___block_invoke_45;
        v155[3] = &unk_278C86308;
        v156 = announcementCopy;
        selfCopy = self;
        v158 = v146;
        v160 = v143;
        v159 = v144;
        v63 = [rapportConnection sendMessage:message device:v58 responseHandler:v155];

        if (v63)
        {
          v64 = [(ANMessenger *)self log];
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            name = [v58 name];
            *buf = 138412546;
            *v173 = name;
            *&v173[8] = 2112;
            *&v173[10] = v63;
            _os_log_error_impl(&dword_23F525000, v64, OS_LOG_TYPE_ERROR, "Failed to send Message for Device %@: %@", buf, 0x16u);
          }

          ++v145;
        }
      }

      v56 = [obj countByEnumeratingWithState:&v161 objects:v174 count:16];
    }

    while (v56);
  }

  else
  {
    v145 = 0;
  }

  users = [v146 users];
  obja = [users count];

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  users2 = [v146 users];
  v67 = [users2 countByEnumeratingWithState:&v151 objects:v171 count:16];
  if (v67)
  {
    v68 = v67;
    v141 = *v152;
    do
    {
      for (k = 0; k != v68; ++k)
      {
        if (*v152 != v141)
        {
          objc_enumerationMutation(users2);
        }

        v70 = *(*(&v151 + 1) + 8 * k);
        hmu_idsDestination = [v70 hmu_idsDestination];
        if (hmu_idsDestination)
        {
          home4 = [v146 home];
          v73 = [ANMessenger announcementForUser:v70 inHome:home4 fromAnnouncement:announcementCopy];
          message2 = [v73 message];

          idsConnection2 = [(ANMessenger *)self idsConnection];
          identifier = [announcementCopy identifier];
          v77 = [idsConnection2 sendMessage:message2 messageUUIDString:identifier destination:hmu_idsDestination];

          v78 = [MEMORY[0x277CBEAA8] now];
          creationTimestamp = [announcementCopy creationTimestamp];
          [v78 timeIntervalSinceDate:creationTimestamp];
          v81 = v80;

          v82 = [(ANMessenger *)self log];
          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            *v173 = v81;
            *&v173[8] = 2112;
            *&v173[10] = hmu_idsDestination;
            _os_log_impl(&dword_23F525000, v82, OS_LOG_TYPE_INFO, "Took %f sec to send over IDS to %@", buf, 0x16u);
          }

          if (v77)
          {
            v83 = [(ANMessenger *)self log];
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              userID = [v70 userID];
              *buf = 138412546;
              *v173 = userID;
              *&v173[8] = 2112;
              *&v173[10] = v77;
              _os_log_error_impl(&dword_23F525000, v83, OS_LOG_TYPE_ERROR, "Failed to send Message for User %@: %@", buf, 0x16u);
            }

            ++v145;
          }

          v84 = +[ANAnalytics shared];
          home5 = [v146 home];
          uniqueIdentifier = [home5 uniqueIdentifier];
          [v84 announcementSent:announcementCopy inHome:uniqueIdentifier withError:objc_msgSend(v77 withTime:"code") sendType:2 ofGroupCount:obja context:{v144, v81}];
        }
      }

      v68 = [users2 countByEnumeratingWithState:&v151 objects:v171 count:16];
    }

    while (v68);
  }

  accessories3 = [v146 accessories];
  v137 = [accessories3 count];

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  accessories4 = [v146 accessories];
  v89 = [accessories4 countByEnumeratingWithState:&v147 objects:v170 count:16];
  if (v89)
  {
    v90 = v89;
    v142 = *v148;
    do
    {
      for (m = 0; m != v90; ++m)
      {
        if (*v148 != v142)
        {
          objc_enumerationMutation(accessories4);
        }

        v92 = *(*(&v147 + 1) + 8 * m);
        idsConnection3 = [(ANMessenger *)self idsConnection];
        service2 = [idsConnection3 service];
        v95 = [v92 hmu_destinationForService:service2];

        destinationURIs = [v95 destinationURIs];
        v97 = [destinationURIs count];

        if (v97)
        {
          home6 = [v146 home];
          v99 = [ANMessenger announcementForAccessory:v92 inHome:home6 fromAnnouncement:announcementCopy];
          message3 = [v99 message];

          idsConnection4 = [(ANMessenger *)self idsConnection];
          identifier2 = [announcementCopy identifier];
          v103 = [idsConnection4 sendMessage:message3 messageUUIDString:identifier2 destination:v95];

          v104 = [MEMORY[0x277CBEAA8] now];
          creationTimestamp2 = [announcementCopy creationTimestamp];
          [v104 timeIntervalSinceDate:creationTimestamp2];
          v107 = v106;

          v108 = [(ANMessenger *)self log];
          if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            *v173 = v107;
            *&v173[8] = 2112;
            *&v173[10] = v95;
            _os_log_impl(&dword_23F525000, v108, OS_LOG_TYPE_INFO, "Took %f sec to send over IDS to %@", buf, 0x16u);
          }

          if (v103)
          {
            v109 = [(ANMessenger *)self log];
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              name2 = [v92 name];
              *buf = 138412546;
              *v173 = name2;
              *&v173[8] = 2112;
              *&v173[10] = v103;
              _os_log_error_impl(&dword_23F525000, v109, OS_LOG_TYPE_ERROR, "Failed to send Message for User %@: %@", buf, 0x16u);
            }

            ++v145;
          }

          v110 = +[ANAnalytics shared];
          home7 = [v146 home];
          uniqueIdentifier2 = [home7 uniqueIdentifier];
          [v110 announcementSent:announcementCopy inHome:uniqueIdentifier2 withError:objc_msgSend(v103 withTime:"code") sendType:3 ofGroupCount:v137 context:{v144, v107}];
        }

        else
        {
          if ([v92 hmu_isEndpoint])
          {
            goto LABEL_77;
          }

          message3 = [(ANMessenger *)self log];
          if (os_log_type_enabled(message3, OS_LOG_TYPE_ERROR))
          {
            name3 = [v92 name];
            uniqueIdentifier3 = [v92 uniqueIdentifier];
            *buf = 138412546;
            *v173 = name3;
            *&v173[8] = 2112;
            *&v173[10] = uniqueIdentifier3;
            _os_log_error_impl(&dword_23F525000, message3, OS_LOG_TYPE_ERROR, "No IDS URI for Accessory: %@, %@", buf, 0x16u);
          }
        }

LABEL_77:
      }

      v90 = [accessories4 countByEnumeratingWithState:&v147 objects:v170 count:16];
    }

    while (v90);
  }

  handlerCopy = v134;
  (v134)[2](v134, announcementCopy, 0);
  v116 = [MEMORY[0x277CBEAA8] now];
  creationTimestamp3 = [announcementCopy creationTimestamp];
  [v116 timeIntervalSinceDate:creationTimestamp3];
  v119 = v118;

  if (v145 <= 0)
  {
    v120 = 0;
  }

  else
  {
    v120 = 5000;
  }

  v121 = +[ANAnalytics shared];
  home8 = [v146 home];
  uniqueIdentifier4 = [home8 uniqueIdentifier];
  [v121 announcementSent:announcementCopy inHome:uniqueIdentifier4 withError:v120 withTime:0 sendType:&obja[v143 + v137] ofGroupCount:v144 context:v119];

LABEL_90:
  v131 = *MEMORY[0x277D85DE8];
}

id __59__ANMessenger__sendAnnouncement_toDestination_sentHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [*(a1 + 32) idsConnection];
  v5 = [v4 service];
  v6 = [v3 IDSDestinationForIDSService:v5];
  v7 = [v6 destinationURIs];
  v8 = [v7 anyObject];

  return v8;
}

void __59__ANMessenger__sendAnnouncement_toDestination_sentHandler___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 now];
  v9 = [*(a1 + 32) creationTimestamp];
  [v8 timeIntervalSinceDate:v9];
  v11 = v10;

  v12 = [*(a1 + 40) log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = 134218242;
    v20 = v11;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_INFO, "Took %f sec to send over rapport to %@", &v19, 0x16u);
  }

  v13 = +[ANAnalytics shared];
  v14 = *(a1 + 32);
  v15 = [*(a1 + 48) home];
  v16 = [v15 uniqueIdentifier];
  v17 = [v7 code];

  [v13 announcementSent:v14 inHome:v16 withError:v17 withTime:1 sendType:*(a1 + 64) ofGroupCount:*(a1 + 56) context:v11];
  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_willTargetReachableDevicesForAnnouncement:(id)announcement inDestination:(id)destination
{
  announcementCopy = announcement;
  destinationCopy = destination;
  location = [announcementCopy location];
  if ([location flags] & 1) != 0 || (objc_msgSend(announcementCopy, "isRelayType"))
  {
  }

  else
  {
    action = [announcementCopy action];

    if (action != 1)
    {
      home = [destinationCopy home];
      location2 = [announcementCopy location];
      v13 = [location2 allRoomsInHome:home];

      v14 = MEMORY[0x277CD1650];
      v15 = [MEMORY[0x277CD1D88] hmu_accessoriesInRooms:v13];
      v16 = [v14 announceAccessoriesWithAnnounceEnabledFromAccessories:v15];

      v17 = [v16 na_map:&__block_literal_global_0];
      devices = [destinationCopy devices];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __72__ANMessenger__willTargetReachableDevicesForAnnouncement_inDestination___block_invoke_2;
      v21[3] = &unk_278C86350;
      v22 = v17;
      v19 = v17;
      v20 = [devices na_firstObjectPassingTest:v21];

      v8 = v20 != 0;
      goto LABEL_5;
    }
  }

  v8 = 1;
LABEL_5:

  return v8;
}

uint64_t __72__ANMessenger__willTargetReachableDevicesForAnnouncement_inDestination___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 homeKitIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)getScanningDeviceCandidates
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  idsConnection = [(ANMessenger *)self idsConnection];
  service = [idsConnection service];
  devices = [service devices];

  v7 = [devices countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(devices);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if (([v11 isHomePod] & 1) == 0)
        {
          nsuuid = [v11 nsuuid];

          if (nsuuid)
          {
            nsuuid2 = [v11 nsuuid];
            uUIDString = [nsuuid2 UUIDString];
            [v3 addObject:uUIDString];
          }
        }
      }

      v8 = [devices countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_INFO, "Coordinated Alerts Announce device candidates: %@", buf, 0xCu);
  }

  v16 = [v3 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_logDebugInfoForHome:(id)home
{
  homeCopy = home;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ANMessenger__logDebugInfoForHome___block_invoke;
  v7[3] = &unk_278C86378;
  v8 = homeCopy;
  selfCopy = self;
  v6 = homeCopy;
  dispatch_async(v5, v7);
}

void __36__ANMessenger__logDebugInfoForHome___block_invoke(uint64_t a1)
{
  v1 = a1;
  v108 = *MEMORY[0x277D85DE8];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v2 = MEMORY[0x277CD1650];
  v3 = [*(a1 + 32) accessories];
  v4 = [v2 announceAccessoriesFromAccessories:v3];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v89 objects:v107 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v90;
    *&v6 = 138413314;
    v67 = v6;
    v68 = v1;
    do
    {
      v9 = 0;
      v69 = v7;
      do
      {
        if (*v90 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v89 + 1) + 8 * v9);
        v11 = [*(v1 + 40) log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 name];
          v13 = [v10 room];
          v14 = [v13 name];
          v15 = [v10 uniqueIdentifier];
          v16 = v8;
          v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "supportsAnnounce")}];
          v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "an_isAnnounceEnabled")}];
          *buf = v67;
          v98 = v12;
          v99 = 2112;
          v100 = v14;
          v101 = 2112;
          v102 = v15;
          v103 = 2112;
          v104 = v17;
          v105 = 2112;
          v106 = v18;
          _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "[Accessory] Name: %@, Room: %@, HomeKitID: %@, Announce Supported: %@, Announced Enabled: %@", buf, 0x34u);

          v8 = v16;
          v1 = v68;

          v7 = v69;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v89 objects:v107 count:16];
    }

    while (v7);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v19 = [*(v1 + 40) rapportConnection];
  v20 = [v19 devices];
  v21 = [v20 activeDevicesSupportingAnnounce];

  v22 = [v21 countByEnumeratingWithState:&v85 objects:v96 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v86;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v86 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v85 + 1) + 8 * i);
        v27 = [*(v1 + 40) log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v26 customDescription];
          *buf = 138412290;
          v98 = v28;
          _os_log_impl(&dword_23F525000, v27, OS_LOG_TYPE_DEFAULT, "[RPDevice (Announce)] %@", buf, 0xCu);
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v85 objects:v96 count:16];
    }

    while (v23);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v29 = [*(v1 + 40) rapportConnection];
  v30 = [v29 devices];
  v31 = [v30 devicesInHome:*(v1 + 32)];

  v32 = [v31 countByEnumeratingWithState:&v81 objects:v95 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v82;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v82 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v81 + 1) + 8 * j);
        v37 = [*(v1 + 40) log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v36 customDescription];
          *buf = 138412290;
          v98 = v38;
          _os_log_impl(&dword_23F525000, v37, OS_LOG_TYPE_DEFAULT, "[RPDevice] %@", buf, 0xCu);
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v81 objects:v95 count:16];
    }

    while (v33);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obja = [*(v1 + 32) hmu_allUsersIncludingCurrentUser];
  v39 = [obja countByEnumeratingWithState:&v77 objects:v94 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v78;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v78 != v41)
        {
          objc_enumerationMutation(obja);
        }

        v43 = *(*(&v77 + 1) + 8 * k);
        v44 = [*(v1 + 40) log];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v43 userID];
          v46 = [v43 userIDSURI];
          v47 = [v46 unprefixedURI];
          v48 = [v43 senderCorrelationIdentifier];
          v49 = [*(v1 + 32) announceAccessAllowedForUser:v43];
          *buf = 138413058;
          v98 = v45;
          v99 = 2112;
          v100 = v47;
          v101 = 2112;
          v102 = v48;
          v103 = 1024;
          LODWORD(v104) = v49;
          _os_log_impl(&dword_23F525000, v44, OS_LOG_TYPE_DEFAULT, "[HMUser] UserID: %@, IDSURI: %@, SenderCorrID: %@, Announce Enabled: %d", buf, 0x26u);
        }
      }

      v40 = [obja countByEnumeratingWithState:&v77 objects:v94 count:16];
    }

    while (v40);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v50 = [*(v1 + 40) idsConnection];
  v51 = [v50 service];
  v52 = [v51 devices];

  objb = v52;
  v53 = [v52 countByEnumeratingWithState:&v73 objects:v93 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v74;
    do
    {
      for (m = 0; m != v54; ++m)
      {
        if (*v74 != v55)
        {
          objc_enumerationMutation(objb);
        }

        v57 = *(*(&v73 + 1) + 8 * m);
        v58 = [*(v1 + 40) log];
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = [v57 name];
          v60 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v57, "isHomePod")}];
          v61 = [v57 uniqueID];
          v62 = [v57 uniqueIDOverride];
          v63 = [v57 modelIdentifier];
          *buf = 138413314;
          v98 = v59;
          v99 = 2112;
          v100 = v60;
          v101 = 2112;
          v102 = v61;
          v103 = 2112;
          v104 = v62;
          v105 = 2112;
          v106 = v63;
          _os_log_impl(&dword_23F525000, v58, OS_LOG_TYPE_DEFAULT, "[IDS Device] Name: %@, isHomePod: %@, Unique ID: %@, Unique ID Override: %@, Model: %@", buf, 0x34u);
        }
      }

      v54 = [objb countByEnumeratingWithState:&v73 objects:v93 count:16];
    }

    while (v54);
  }

  v64 = [*(v1 + 40) log];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = IDSCopyLocalDeviceUniqueID();
    *buf = 138412290;
    v98 = v65;
    _os_log_impl(&dword_23F525000, v64, OS_LOG_TYPE_DEFAULT, "[IDS Local Device] UniqueID: %@", buf, 0xCu);
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didReceiveMessage:(id)message fromSender:(id)sender senderContext:(id)context handler:(id)handler
{
  v69 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  messageCopy = message;
  senderCopy = sender;
  contextCopy = context;
  handlerCopy = handler;
  v17 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v66 = *&senderCopy;
    v67 = 2112;
    v68 = messageCopy;
    _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "Received Message From (%@): %@", buf, 0x16u);
  }

  v18 = [objc_alloc(MEMORY[0x277CEAB48]) initWithMessage:messageCopy];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    creationTimestamp = [v18 creationTimestamp];
    [v19 timeIntervalSinceDate:creationTimestamp];
    v22 = v21;

    [v18 setSender:senderCopy];
    v23 = [ANValidationHelper performBasicValidationForAnnouncement:v18 type:1];
    v61 = handlerCopy;
    if (v23)
    {
      currentAccessory = v23;
      v25 = messageCopy;
      v26 = senderCopy;
      v27 = connectionCopy;
      v28 = contextCopy;
      v29 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
      }

      v30 = +[ANAnalytics shared];
      code = [currentAccessory code];
      announcer = [v18 announcer];
      v33 = [ANAnalyticsContext contextWithAnnouncer:announcer];
      [v30 error:code context:v33];

      goto LABEL_8;
    }

    idsConnection = [(ANMessenger *)self idsConnection];

    if (idsConnection == connectionCopy)
    {
      v44 = [ANMessenger performIDSValidationForAnnouncement:v18 withSenderContext:contextCopy];
      if (v44)
      {
        currentAccessory = v44;
        v25 = messageCopy;
        v26 = senderCopy;
        v27 = connectionCopy;
        v28 = contextCopy;
        v45 = [(ANMessenger *)self log];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
        }

        goto LABEL_24;
      }
    }

    else
    {
      rapportConnection = [(ANMessenger *)self rapportConnection];

      if (rapportConnection != connectionCopy)
      {
        v60 = contextCopy;
        currentAccessory = [MEMORY[0x277CCA9B8] an_errorWithCode:5018 component:*MEMORY[0x277CEA9B8]];
        v39 = [(ANMessenger *)self log];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
        }

        v40 = +[ANAnalytics shared];
        code2 = [currentAccessory code];
        announcer2 = [v18 announcer];
        v43 = [ANAnalyticsContext contextWithAnnouncer:announcer2];
        [v40 error:code2 context:v43];

        handlerCopy = v61;
        (v61)[2](v61, currentAccessory);
        contextCopy = v60;
        goto LABEL_12;
      }

      v46 = [ANMessenger performRapportValidationForAnnouncement:v18 withSenderContext:contextCopy];
      if (v46)
      {
        currentAccessory = v46;
        v25 = messageCopy;
        v26 = senderCopy;
        v27 = connectionCopy;
        v28 = contextCopy;
        v45 = [(ANMessenger *)self log];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
        }

LABEL_24:

        v47 = +[ANAnalytics shared];
        code3 = [currentAccessory code];
        announcer3 = [v18 announcer];
        v50 = [ANAnalyticsContext contextWithAnnouncer:announcer3];
        [v47 error:code3 context:v50];

LABEL_8:
        handlerCopy = v61;
        (v61)[2](v61, currentAccessory);
        contextCopy = v28;
        connectionCopy = v27;
        senderCopy = v26;
        messageCopy = v25;
        goto LABEL_12;
      }
    }

    v51 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      rapportConnection2 = [(ANMessenger *)self rapportConnection];
      v53 = @"IDS";
      if (rapportConnection2 == connectionCopy)
      {
        v53 = @"rapport";
      }

      *buf = 134218242;
      v66 = v22;
      v67 = 2112;
      v68 = v53;
      _os_log_impl(&dword_23F525000, v51, OS_LOG_TYPE_INFO, "Received Message took %f over %@", buf, 0x16u);
    }

    if (![MEMORY[0x277CEAB88] isPhone] || (objc_msgSend(v18, "isRelayRequest") & 1) == 0)
    {
      announcer4 = [v18 announcer];
      v55 = [ANAnalyticsContext contextWithAnnouncer:announcer4];

      v56 = +[ANAnalytics shared];
      rapportConnection3 = [(ANMessenger *)self rapportConnection];
      [v56 announcementReceived:v18 withTime:rapportConnection3 != connectionCopy receiveTimeType:v55 context:v22];
    }

    v58 = +[ANHomeManager shared];
    currentAccessory = [v58 currentAccessory];

    if (([v18 action] & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      handlerCopy = v61;
      if (!currentAccessory)
      {
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __77__ANMessenger_connection_didReceiveMessage_fromSender_senderContext_handler___block_invoke;
        v63[3] = &unk_278C863A0;
        v63[4] = self;
        v64 = v61;
        [(ANMessenger *)self _forwardRelayRequest:v18 withSenderContext:contextCopy sentHandler:v63];

        goto LABEL_12;
      }

      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __77__ANMessenger_connection_didReceiveMessage_fromSender_senderContext_handler___block_invoke_59;
      v62[3] = &unk_278C863C8;
      v62[4] = self;
      [(ANMessenger *)self _fulfillRelayRequest:v18 withSenderContext:contextCopy sentHandler:v62];
    }

    delegate = [(ANMessenger *)self delegate];
    [delegate receivedAnnouncement:v18];

    handlerCopy = v61;
    v61[2](v61, 0);
  }

  else
  {
    currentAccessory = [MEMORY[0x277CCA9B8] an_errorWithCode:5017 component:*MEMORY[0x277CEA9B8]];
    v34 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
    }

    v35 = +[ANAnalytics shared];
    [v35 error:{objc_msgSend(currentAccessory, "code")}];

    (*(handlerCopy + 2))(handlerCopy, currentAccessory);
  }

LABEL_12:

  v36 = *MEMORY[0x277D85DE8];
}

void __77__ANMessenger_connection_didReceiveMessage_fromSender_senderContext_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) log];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __77__ANMessenger_connection_didReceiveMessage_fromSender_senderContext_handler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Forwarded message on behalf of companion", v7, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void __77__ANMessenger_connection_didReceiveMessage_fromSender_senderContext_handler___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Did not relay announcement: %@, announcement = %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection failedDeliveryForMessage:(id)message withError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CEAB48];
  messageCopy = message;
  v10 = [[v8 alloc] initWithMessage:messageCopy];

  if (v10)
  {
    delegate = [(ANMessenger *)self delegate];
    [delegate failedToDeliverAnnouncement:v10 error:errorCopy];
  }

  else
  {
    delegate = [(ANMessenger *)self log];
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
    }
  }
}

- (id)connectionDidReceiveRequestForHomeLocationStatus:(id)status
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = +[ANHomeManager shared];
  allHomes = [v4 allHomes];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = allHomes;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "homeLocationStatus", v16)}];
        uniqueIdentifier = [v11 uniqueIdentifier];
        [v3 setObject:v12 forKeyedSubscript:uniqueIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (ANMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)createAnnouncementWithRequest:(id)request forLocation:(id)location inHome:(id)home isReply:(BOOL)reply error:(id *)error
{
  replyCopy = reply;
  v72 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  locationCopy = location;
  homeCopy = home;
  content = [requestCopy content];
  audioFileURL = [content audioFileURL];
  v65 = 0;
  v16 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:audioFileURL options:2 error:&v65];
  v17 = v65;
  v18 = ANLogHandleMessenger_Announcement();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v67 = &stru_2851BDB18;
      v68 = 2112;
      v69 = audioFileURL;
      v70 = 2112;
      v71 = v17;
      _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_ERROR, "%@Failed to load data from file: URL = %@, Error = %@", buf, 0x20u);
    }

    if (error)
    {
      v20 = v17;
      v21 = 0;
      *error = v17;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_44;
  }

  log = replyCopy;
  v63 = requestCopy;
  errorCopy = error;
  v61 = homeCopy;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "length")}];
    *buf = 138412802;
    v67 = &stru_2851BDB18;
    v68 = 2112;
    v69 = audioFileURL;
    v70 = 2112;
    v71 = v22;
    _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Loaded audio file data from URL (%@) of size %@", buf, 0x20u);
  }

  v23 = [objc_alloc(MEMORY[0x277CEAB60]) initWithData:v16 type:1];
  [v23 setFlags:1];
  v24 = objc_opt_new();
  v59 = v23;
  [v24 addObject:v23];
  transcription = [content transcription];
  v26 = transcription;
  if (transcription)
  {
    v27 = [transcription dataUsingEncoding:4];
    v28 = [objc_alloc(MEMORY[0x277CEAB60]) initWithData:v27 type:2];
    [v24 addObject:v28];
  }

  v58 = v26;
  v29 = objc_opt_new();
  v62 = v24;
  v30 = [v24 copy];
  [v29 setDataItems:v30];

  v64 = 0;
  LOBYTE(v30) = [v29 processAudioWithEffects:objc_msgSend(MEMORY[0x277CEAB48] error:{"defaultAudioEffects"), &v64}];
  v31 = v64;
  if ((v30 & 1) == 0)
  {
    v32 = ANLogHandleMessenger_Announcement();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v67 = &stru_2851BDB18;
      v68 = 2112;
      v69 = v31;
      _os_log_impl(&dword_23F525000, v32, OS_LOG_TYPE_ERROR, "%@Failed to process audio. Requesting remote normalization. Error = %@", buf, 0x16u);
    }
  }

  v55 = v31;
  v60 = locationCopy;
  [v29 setLocation:locationCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [v29 setCreationTimestamp:date];

  v34 = MEMORY[0x277CEAB48];
  clientID = [v63 clientID];
  [v29 setSource:{objc_msgSend(v34, "sourceFromString:", clientID)}];

  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  LODWORD(clientID) = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA940]];

  v37 = +[ANHomeManager shared];
  currentAccessory = [v37 currentAccessory];

  if (clientID && !currentAccessory)
  {
    v39 = 0;
    if (log)
    {
      v40 = 5;
    }

    else
    {
      v40 = 4;
    }

    [v29 setAction:v40];
    v41 = ANLogHandleMessenger_Announcement();
    homeCopy = v61;
    v42 = v62;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v41, OS_LOG_TYPE_DEFAULT, "%@Relaying message via resident.", buf, 0xCu);
    }

    goto LABEL_29;
  }

  [v29 setAction:log];
  homeCopy = v61;
  v42 = v62;
  v39 = currentAccessory;
  if (currentAccessory)
  {
    homeKitUserIdentifier = [content homeKitUserIdentifier];
    if (homeKitUserIdentifier)
    {
      currentUser = [v61 hmu_userWithUniqueIdentifier:homeKitUserIdentifier];
      if (!currentUser)
      {
        v45 = 0;
LABEL_34:

        announcer = [v29 announcer];
        [announcer populateWithUser:currentUser andAccessory:v39];

        homeCopy = v61;
        goto LABEL_35;
      }

      if ([v61 announceAccessAllowedForUser:currentUser])
      {
        v45 = ANLogHandleMessenger_Announcement();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          name = [currentUser name];
          [currentUser uniqueIdentifier];
          v46 = loga = v45;
          *buf = 138412802;
          v67 = &stru_2851BDB18;
          v68 = 2112;
          v69 = name;
          v70 = 2112;
          v71 = v46;
          _os_log_impl(&dword_23F525000, loga, OS_LOG_TYPE_DEFAULT, "%@Recognized User with Announce access. Not sending to personal devices for user. %@, %@", buf, 0x20u);

          v45 = loga;
        }

        goto LABEL_34;
      }

      v45 = currentUser;
    }

    else
    {
      v45 = 0;
    }

    currentUser = 0;
    goto LABEL_34;
  }

LABEL_29:
  homeKitUserIdentifier = [v29 announcer];
  currentUser = [homeCopy currentUser];
  [homeKitUserIdentifier populateWithUser:currentUser];
LABEL_35:

  v48 = [ANValidationHelper performBasicValidationForAnnouncement:v29 type:0];
  if (v48)
  {
    v49 = ANLogHandleMessenger_Announcement();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v67 = &stru_2851BDB18;
      v68 = 2112;
      v69 = v48;
      _os_log_impl(&dword_23F525000, v49, OS_LOG_TYPE_ERROR, "%@Failed Send Basic Validation with Error: %@", buf, 0x16u);
    }

    if (errorCopy)
    {
      v50 = v48;
      v21 = 0;
      *errorCopy = v48;
    }

    else
    {
      v21 = 0;
    }

    v42 = v62;
  }

  else
  {
    v21 = v29;
  }

  locationCopy = v60;
  requestCopy = v63;
LABEL_44:

  v51 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)announcementForDevice:(id)device inHome:(id)home fromAnnouncement:(id)announcement
{
  v27 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  homeCopy = home;
  announcementCopy = announcement;
  if (([announcementCopy isRelayRequest] & 1) != 0 || +[ANMessenger _isAnnouncerAdminInAnnouncement:home:](ANMessenger, "_isAnnouncerAdminInAnnouncement:home:", announcementCopy, homeCopy) || objc_msgSend(deviceCopy, "isOwnerDevice"))
  {
    v10 = announcementCopy;
  }

  else
  {
    homeKitUserIdentifiers = [deviceCopy homeKitUserIdentifiers];
    v14 = homeKitUserIdentifiers;
    if (homeKitUserIdentifiers)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      announcer = homeKitUserIdentifiers;
      v16 = [announcer countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(announcer);
            }

            v20 = [homeCopy hmu_userWithUniqueIdentifier:{*(*(&v22 + 1) + 8 * i), v22}];
            if (v20)
            {
              v21 = v20;
              v10 = [ANMessenger announcementForUser:v20 inHome:homeCopy fromAnnouncement:announcementCopy];

              goto LABEL_20;
            }
          }

          v17 = [announcer countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

    v10 = [announcementCopy copy];
    announcer = [v10 announcer];
    [announcer clearIdentifiers];
LABEL_20:
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)announcementForUser:(id)user inHome:(id)home fromAnnouncement:(id)announcement
{
  userCopy = user;
  homeCopy = home;
  announcementCopy = announcement;
  if (+[ANMessenger _isAnnouncerAdminInAnnouncement:home:](ANMessenger, "_isAnnouncerAdminInAnnouncement:home:", announcementCopy, homeCopy) || ([homeCopy hmu_isAdministrator:userCopy] & 1) != 0)
  {
    v10 = announcementCopy;
  }

  else
  {
    v10 = [announcementCopy copy];
    announcer = [v10 announcer];
    [announcer clearIdentifiers];
  }

  return v10;
}

+ (id)locationForHome:(id)home rooms:(id)rooms zones:(id)zones idsService:(id)service
{
  homeCopy = home;
  roomsCopy = rooms;
  zonesCopy = zones;
  v12 = MEMORY[0x277CEABA8];
  serviceCopy = service;
  v14 = [v12 alloc];
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  v16 = [v14 initWithHomeID:uniqueIdentifier];

  if ([roomsCopy count] || objc_msgSend(zonesCopy, "count"))
  {
    [v16 setFlags:0];
    v17 = MEMORY[0x277CD1D88];
    v18 = [MEMORY[0x277CD1D88] an_roomsWithAnnounceAccessoriesFromRooms:roomsCopy];
    v19 = [v17 hmu_uniqueIdentifiersFromRooms:v18];
    [v16 setRoomUUIDs:v19];

    v20 = MEMORY[0x277CD1F50];
    v21 = [MEMORY[0x277CD1F50] an_zonesWithAnnounceAccessoriesFromZones:zonesCopy];
    v22 = [v20 hmu_uniqueIdentifiersFromZones:v21];
    [v16 setZoneUUIDs:v22];
  }

  else
  {
    [v16 setFlags:1];
  }

  [ANMessenger _setIdentifiersForIDSService:serviceCopy inLocation:v16 home:homeCopy];

  return v16;
}

+ (id)locationForReplyToAnnouncement:(id)announcement home:(id)home idsService:(id)service
{
  announcementCopy = announcement;
  homeCopy = home;
  serviceCopy = service;
  location = [announcementCopy location];
  if (([location flags] & 1) == 0)
  {
    v11 = objc_alloc(MEMORY[0x277CEABA8]);
    homeUUID = [location homeUUID];
    v13 = [v11 initWithHomeID:homeUUID];

    v14 = MEMORY[0x277CBEB58];
    roomUUIDs = [location roomUUIDs];
    v16 = [homeCopy hmu_roomsWithUniqueIdentifiers:roomUUIDs];
    v34 = [v14 setWithArray:v16];

    v17 = MEMORY[0x277CBEB58];
    zoneUUIDs = [location zoneUUIDs];
    v19 = [homeCopy hmu_zonesWithUniqueIdentifiers:zoneUUIDs];
    v20 = [v17 setWithArray:v19];

    announcer = [announcementCopy announcer];
    if ([announcer isAccessory])
    {
      announcer2 = [announcementCopy announcer];
      homeKitID = [announcer2 homeKitID];

      if (!homeKitID)
      {
LABEL_7:
        v27 = MEMORY[0x277CD1D88];
        allObjects = [v34 allObjects];
        v29 = [v27 hmu_uniqueIdentifiersFromRooms:allObjects];
        [v13 setRoomUUIDs:v29];

        v30 = MEMORY[0x277CD1F50];
        allObjects2 = [v20 allObjects];
        v32 = [v30 hmu_uniqueIdentifiersFromZones:allObjects2];
        [v13 setZoneUUIDs:v32];

        goto LABEL_9;
      }

      announcer3 = [announcementCopy announcer];
      homeKitID2 = [announcer3 homeKitID];
      v26 = [homeCopy hmu_accessoryWithUniqueIdentifierUUIDString:homeKitID2];
      announcer = [v26 room];

      if (announcer)
      {
        [v34 addObject:announcer];
      }
    }

    goto LABEL_7;
  }

  v13 = [location copy];
LABEL_9:
  [ANMessenger _setIdentifiersForIDSService:serviceCopy inLocation:v13 home:homeCopy];

  return v13;
}

+ (BOOL)_isAnnouncerAdminInAnnouncement:(id)announcement home:(id)home
{
  announcementCopy = announcement;
  homeCopy = home;
  announcer = [announcementCopy announcer];
  homeKitID = [announcer homeKitID];

  if (homeKitID)
  {
    announcer2 = [announcementCopy announcer];
    isAccessory = [announcer2 isAccessory];

    if (isAccessory)
    {
      announcer3 = [announcementCopy announcer];
      homeKitUserID = [announcer3 homeKitUserID];

      if (!homeKitUserID)
      {
        v15 = [homeCopy hmu_accessoryWithUniqueIdentifierUUIDString:homeKitID];
        v16 = v15 != 0;
        goto LABEL_10;
      }

      announcer4 = [announcementCopy announcer];
      homeKitUserID2 = [announcer4 homeKitUserID];
      v15 = [homeCopy hmu_userWithUniqueIdentifierUUIDString:homeKitUserID2];

      if (!v15)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v15 = [homeCopy hmu_userWithUniqueIdentifierUUIDString:homeKitID];
      if (!v15)
      {
LABEL_5:
        LOBYTE(v16) = 0;
LABEL_10:

        goto LABEL_11;
      }
    }

    LOBYTE(v16) = [homeCopy hmu_isAdministrator:v15];
    goto LABEL_10;
  }

  LOBYTE(v16) = 0;
LABEL_11:

  return v16;
}

+ (void)_setIdentifiersForIDSService:(id)service inLocation:(id)location home:(id)home
{
  v17[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  locationCopy = location;
  homeCopy = home;
  v10 = +[ANHomeManager shared];
  currentAccessory = [v10 currentAccessory];

  if (!currentAccessory)
  {
    if ([locationCopy flags])
    {
      [locationCopy setFlags:{objc_msgSend(locationCopy, "flags") | 6}];
    }

    currentUser = [homeCopy currentUser];
    uniqueIdentifier = [currentUser uniqueIdentifier];
    v17[0] = uniqueIdentifier;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [locationCopy setUserUUIDs:v14];

    uniqueIdentifiersForDevicesExcludingAppleAccessories = [serviceCopy uniqueIdentifiersForDevicesExcludingAppleAccessories];
    [locationCopy setDeviceIDs:uniqueIdentifiersForDevicesExcludingAppleAccessories];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)performBasicValidationForAnnouncement:(id)announcement type:(unint64_t)type
{
  announcementCopy = announcement;
  location = [announcementCopy location];
  homeUUID = [location homeUUID];

  if (!homeUUID)
  {
    v15 = MEMORY[0x277CCACA8];
    identifier = [announcementCopy identifier];
    v9 = [v15 stringWithFormat:@"Announcement (%@) missing Home ID", identifier];

    v14 = [MEMORY[0x277CCA9B8] an_errorWithCode:1030 component:*MEMORY[0x277CEA9B8] description:v9];
    goto LABEL_27;
  }

  v8 = +[ANHomeManager shared];
  v9 = [v8 homeForID:homeUUID];

  if (!v9)
  {
    v17 = MEMORY[0x277CCACA8];
    identifier2 = [announcementCopy identifier];
    currentAccessory = [v17 stringWithFormat:@"Local device is not part of home: (%@) in Announcement (%@)", homeUUID, identifier2];

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CEA9B8];
    v21 = 1016;
    v22 = currentAccessory;
LABEL_24:
    v31 = [v19 an_errorWithCode:v21 component:v20 description:v22];
LABEL_25:
    v14 = v31;
    goto LABEL_26;
  }

  v10 = +[ANHomeManager shared];
  currentAccessory = [v10 currentAccessory];

  isAnnounceAccessory = [MEMORY[0x277CEAB88] isAnnounceAccessory];
  v13 = isAnnounceAccessory;
  if (currentAccessory || (isAnnounceAccessory & 1) != 0)
  {
    if (((currentAccessory == 0) & isAnnounceAccessory) == 1)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CEA9B8];
      v22 = @"Current Accessory is nil, and device is HomePod this should not happen";
      v21 = 1048;
      goto LABEL_24;
    }

    if (([(__CFString *)currentAccessory an_supportsAnnounce]& 1) == 0)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CEA9B8];
      v22 = @"Current Accessory does not support Announce";
      v21 = 1030;
      goto LABEL_24;
    }

    isRelayRequest = [announcementCopy isRelayRequest];
    if (!type && (isRelayRequest & 1) == 0 && ([(__CFString *)currentAccessory an_isAnnounceEnabled]& 1) == 0)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CEA9B8];
      v22 = @"Announce not enabled for Current Accessory";
      goto LABEL_22;
    }

    v14 = 0;
    if (!currentAccessory || ((v13 ^ 1) & 1) != 0)
    {
      goto LABEL_26;
    }

    mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
    v25 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA810]];

    if (v25)
    {
      v26 = +[ANHomeManager shared];
      currentHome = [v26 currentHome];

      if (currentHome)
      {
        uniqueIdentifier = [(__CFString *)currentHome uniqueIdentifier];
        uniqueIdentifier2 = [v9 uniqueIdentifier];
        v30 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        if (v30)
        {

LABEL_32:
          v31 = [ANMessenger validateAnnouncerInAnnouncement:announcementCopy home:v9];
          goto LABEL_25;
        }

        v39 = MEMORY[0x277CCACA8];
        uniqueIdentifier3 = [v9 uniqueIdentifier];
        uniqueIdentifier4 = [(__CFString *)currentHome uniqueIdentifier];
        v42 = [v39 stringWithFormat:@"Announcent Home ID (%@) does not match Current Home ID (%@)", uniqueIdentifier3, uniqueIdentifier4];

        v14 = [MEMORY[0x277CCA9B8] an_errorWithCode:1016 component:*MEMORY[0x277CEA9B8] description:v42];

LABEL_37:
        goto LABEL_26;
      }

      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CEA9B8];
      v38 = @"Unable to determine current home for accessory to validate announcement";
      v37 = 1030;
    }

    else
    {
      if (([(__CFString *)currentAccessory hmu_isPartOfHome:v9]& 1) != 0)
      {
        goto LABEL_32;
      }

      v33 = MEMORY[0x277CCACA8];
      uniqueIdentifier5 = [v9 uniqueIdentifier];
      currentHome = [v33 stringWithFormat:@"Accessory is not in the Announcement's home (%@)", uniqueIdentifier5];

      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CEA9B8];
      v37 = 1016;
      v38 = currentHome;
    }

    v14 = [v35 an_errorWithCode:v37 component:v36 description:v38];
    goto LABEL_37;
  }

  if (([v9 announceAccessAllowedForCurrentUser] & 1) == 0)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CEA9B8];
    v22 = @"Announce Access Not Allowed For Current User";
LABEL_22:
    v21 = 1017;
    goto LABEL_24;
  }

  v14 = 0;
LABEL_26:

LABEL_27:

  return v14;
}

+ (id)validateAnnouncerInAnnouncement:(id)announcement home:(id)home
{
  homeCopy = home;
  announcer = [announcement announcer];
  homeKitUserID = [announcer homeKitUserID];

  if (!homeKitUserID)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v8 = [homeCopy hmu_userWithUniqueIdentifierUUIDString:homeKitUserID];
  if (!v8)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CEA9B8];
    v12 = @"No user with matching identifier";
    v13 = 1030;
LABEL_8:
    v9 = [v10 an_errorWithCode:v13 component:v11 description:v12];
    goto LABEL_9;
  }

  if (([homeCopy announceAccessAllowedForUser:v8] & 1) == 0)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CEA9B8];
    v12 = @"Announce Access Not Allowed For User";
    v13 = 1017;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

LABEL_10:

  return v9;
}

+ (id)performIDSValidationForAnnouncement:(id)announcement withSenderContext:(id)context
{
  contextCopy = context;
  announcementCopy = announcement;
  v7 = +[ANHomeManager shared];
  currentAccessory = [v7 currentAccessory];

  v9 = +[ANHomeManager shared];
  location = [announcementCopy location];

  homeUUID = [location homeUUID];
  v12 = [v9 homeForID:homeUUID];

  if (!currentAccessory && ([v12 hmu_isRemoteAccessAllowedForCurrentUser] & 1) == 0)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CEA9B8];
    v22 = @"Remote Access Not Allowed for Current User";
    goto LABEL_14;
  }

  senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];

  if (!senderCorrelationIdentifier)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CEA9B8];
    v22 = @"No Sender Correlation ID";
LABEL_14:
    v30 = [v20 an_errorWithCode:1030 component:v21 description:v22];
    goto LABEL_20;
  }

  if (![contextCopy isValidDevice])
  {
    senderCorrelationIdentifier2 = [contextCopy senderCorrelationIdentifier];
    owner2 = [v12 hmu_userWithSenderCorrelationIdentifier:senderCorrelationIdentifier2];

    if (owner2)
    {
      goto LABEL_9;
    }

    v31 = @"No user with matching Sender Correlation ID";
LABEL_18:
    v30 = [MEMORY[0x277CCA9B8] an_errorWithCode:1030 component:*MEMORY[0x277CEA9B8] description:v31];
    goto LABEL_19;
  }

  currentUser = [v12 currentUser];
  uniqueIdentifier = [currentUser uniqueIdentifier];
  owner = [v12 owner];
  uniqueIdentifier2 = [owner uniqueIdentifier];
  v18 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (!v18)
  {
    owner2 = 0;
    v31 = @"Received message from a known device but current user is not owner.";
    goto LABEL_18;
  }

  owner2 = [v12 owner];
LABEL_9:
  if (!currentAccessory)
  {
    mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
    v25 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA940]];

    if (v25)
    {
      uniqueIdentifier3 = [owner2 uniqueIdentifier];
      owner3 = [v12 owner];
      uniqueIdentifier4 = [owner3 uniqueIdentifier];
      v29 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

      if ((v29 & 1) == 0)
      {
        v31 = @"Received an announcement from non-owner";
        goto LABEL_18;
      }
    }
  }

  v30 = 0;
LABEL_19:

LABEL_20:

  return v30;
}

+ (id)performPreflightChecksForSendingContent:(id)content toHome:(id)home rooms:(id)rooms zones:(id)zones
{
  contentCopy = content;
  homeCopy = home;
  roomsCopy = rooms;
  zonesCopy = zones;
  if ([roomsCopy count] || objc_msgSend(zonesCopy, "count"))
  {
    v13 = [ANMessenger _performPreflightChecksForSendingToRooms:roomsCopy zones:zonesCopy];
  }

  else
  {
    v13 = [ANMessenger _performPreflightChecksForSendingContent:contentCopy toHome:homeCopy];
  }

  v14 = v13;

  return v14;
}

+ (id)_performPreflightChecksForSendingContent:(id)content toHome:(id)home
{
  contentCopy = content;
  homeCopy = home;
  appleAnnounceCapableAccessories = [homeCopy appleAnnounceCapableAccessories];
  v9 = [appleAnnounceCapableAccessories count];

  if (!v9)
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CEA9B8];
    v31 = 1033;
LABEL_19:
    v4 = [v29 an_errorWithCode:v31 component:v30];
    goto LABEL_24;
  }

  appleAnnounceAccessories = [homeCopy appleAnnounceAccessories];
  v11 = [appleAnnounceAccessories count];

  if (!v11)
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CEA9B8];
    v31 = 1035;
    goto LABEL_19;
  }

  v12 = +[ANHomeManager shared];
  currentAccessory = [v12 currentAccessory];

  if (currentAccessory)
  {
    v14 = currentAccessory;
    usersIncludingCurrentUserWithAnnounceEnabled = [homeCopy usersIncludingCurrentUserWithAnnounceEnabled];
    v16 = MEMORY[0x277CD1650];
    accessories = [homeCopy accessories];
    v18 = [v16 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories];
    v19 = [v18 mutableCopy];

    room = [v14 room];
    v21 = room;
    if (room)
    {
      v22 = MEMORY[0x277CD1650];
      accessories2 = [room accessories];
      v24 = [v22 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories2];

      [v19 removeObjectsInArray:v24];
    }

    homeKitUserIdentifier = [contentCopy homeKitUserIdentifier];
    if (homeKitUserIdentifier)
    {
      v37 = v14;
      v26 = [homeCopy hmu_userWithUniqueIdentifier:homeKitUserIdentifier];
      if (v26)
      {
        v27 = [usersIncludingCurrentUserWithAnnounceEnabled mutableCopy];
        [v27 removeObject:v26];
        if (![v27 count] && !objc_msgSend(v19, "count"))
        {
          v4 = [MEMORY[0x277CCA9B8] an_errorWithCode:1047 component:*MEMORY[0x277CEA9B8]];

          v28 = 0;
          v14 = v37;
          goto LABEL_15;
        }
      }

      v14 = v37;
    }

    if ([usersIncludingCurrentUserWithAnnounceEnabled count] || objc_msgSend(v19, "count"))
    {
      v28 = 1;
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] an_errorWithCode:1031 component:*MEMORY[0x277CEA9B8]];
      v28 = 0;
    }

LABEL_15:

    if ((v28 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v32 = MEMORY[0x277CD1650];
  accessories3 = [homeCopy accessories];
  v34 = [v32 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories3];
  v35 = [v34 count];

  if (!v35)
  {
    v4 = [MEMORY[0x277CCA9B8] an_errorWithCode:1031 component:*MEMORY[0x277CEA9B8]];
    goto LABEL_23;
  }

LABEL_21:
  v4 = 0;
LABEL_23:

LABEL_24:

  return v4;
}

+ (id)_performPreflightChecksForSendingToRooms:(id)rooms zones:(id)zones
{
  roomsCopy = rooms;
  zonesCopy = zones;
  v7 = [MEMORY[0x277CD1D88] an_roomsWithAnnounceAccessoriesFromRooms:roomsCopy];
  if ([v7 count])
  {
  }

  else
  {
    v8 = [MEMORY[0x277CD1F50] an_zonesWithAnnounceAccessoriesFromZones:zonesCopy];
    v9 = [v8 count];

    if (!v9)
    {
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CEA9B8];
      v27 = 1049;
      goto LABEL_14;
    }
  }

  v10 = MEMORY[0x277CD1650];
  v11 = [MEMORY[0x277CD1D88] hmu_accessoriesInRooms:roomsCopy];
  v12 = [v10 announceAccessoriesFromAccessories:v11];
  if ([v12 count])
  {
  }

  else
  {
    v13 = MEMORY[0x277CD1650];
    v14 = [MEMORY[0x277CD1F50] hmu_accessoriesInZones:zonesCopy];
    v15 = [v13 announceAccessoriesFromAccessories:v14];
    v16 = [v15 count];

    if (!v16)
    {
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CEA9B8];
      v27 = 1035;
      goto LABEL_14;
    }
  }

  v17 = MEMORY[0x277CD1650];
  v18 = [MEMORY[0x277CD1D88] hmu_accessoriesInRooms:roomsCopy];
  v19 = [v17 announceAccessoriesWithAnnounceEnabledFromAccessories:v18];
  if ([v19 count])
  {

LABEL_10:
    v24 = 0;
    goto LABEL_15;
  }

  v20 = MEMORY[0x277CD1650];
  v21 = [MEMORY[0x277CD1F50] hmu_accessoriesInZones:zonesCopy];
  v22 = [v20 announceAccessoriesWithAnnounceEnabledFromAccessories:v21];
  v23 = [v22 count];

  if (v23)
  {
    goto LABEL_10;
  }

  v25 = MEMORY[0x277CCA9B8];
  v26 = *MEMORY[0x277CEA9B8];
  v27 = 1031;
LABEL_14:
  v24 = [v25 an_errorWithCode:v27 component:v26];
LABEL_15:

  return v24;
}

+ (id)performPreflightChecksForSendingAnnouncementToHome:(id)home rooms:(id)rooms zones:(id)zones
{
  homeCopy = home;
  roomsCopy = rooms;
  zonesCopy = zones;
  appleAnnounceCapableAccessories = [homeCopy appleAnnounceCapableAccessories];
  v12 = [appleAnnounceCapableAccessories count];

  if (!v12)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CEA9B8];
    v21 = 1033;
LABEL_11:
    v22 = [v19 an_errorWithCode:v21 component:v20];
    goto LABEL_26;
  }

  appleAnnounceAccessories = [homeCopy appleAnnounceAccessories];
  v14 = [appleAnnounceAccessories count];

  if (!v14)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CEA9B8];
    v21 = 1035;
    goto LABEL_11;
  }

  v15 = +[ANHomeManager shared];
  currentAccessory = [v15 currentAccessory];

  isAnnounceAccessory = [MEMORY[0x277CEAB88] isAnnounceAccessory];
  if (currentAccessory || (isAnnounceAccessory & 1) != 0)
  {
    if (currentAccessory || ((isAnnounceAccessory ^ 1) & 1) != 0)
    {
      if (([currentAccessory an_supportsAnnounce] & 1) == 0)
      {
        v23 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CEA9B8];
        v25 = @"Current Accessory does not support Announce";
        v26 = 1030;
        goto LABEL_23;
      }

      if (([currentAccessory an_isAnnounceEnabled] & 1) == 0)
      {
        v23 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CEA9B8];
        v25 = @"Announce not enabled for Endpoint Accessory";
        goto LABEL_21;
      }

      if ([roomsCopy count] != 1)
      {
        goto LABEL_6;
      }

      room = [currentAccessory room];
      uniqueIdentifier = [room uniqueIdentifier];
      firstObject = [roomsCopy firstObject];
      uniqueIdentifier2 = [firstObject uniqueIdentifier];
      v31 = [uniqueIdentifier isEqual:uniqueIdentifier2];

      if (!v31)
      {
        goto LABEL_6;
      }

      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CEA9B8];
      v25 = @"Announcing to self";
      v26 = 1057;
    }

    else
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CEA9B8];
      v25 = @"Current Accessory is nil, and device is HomePod this should not happen";
      v26 = 1048;
    }

LABEL_23:
    v18 = [v23 an_errorWithCode:v26 component:v24 description:v25];
    goto LABEL_24;
  }

  if (([homeCopy announceAccessAllowedForCurrentUser] & 1) == 0)
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CEA9B8];
    v25 = @"Announce Access Not Allowed For Current User";
LABEL_21:
    v26 = 1017;
    goto LABEL_23;
  }

LABEL_6:
  if (![roomsCopy count] && !objc_msgSend(zonesCopy, "count"))
  {
    v22 = 0;
    goto LABEL_25;
  }

  v18 = [self _performPreflightChecksForSendingToRooms:roomsCopy zones:zonesCopy];
LABEL_24:
  v22 = v18;
LABEL_25:

LABEL_26:

  return v22;
}

- (void)forwardAnnouncementToCompanion:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_23F525000, a3, OS_LOG_TYPE_ERROR, "Failed to forward message to companion %@: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_calculateAnnouncementDeadline:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_fulfillRelayRequest:withSenderContext:sentHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendAnnouncement:(void *)a1 toDestination:(NSObject *)a2 sentHandler:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 accessories];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "Unable to relay over IDS. No URI for accessories %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_sendAnnouncement:toDestination:sentHandler:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connection:didReceiveMessage:fromSender:senderContext:handler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connection:didReceiveMessage:fromSender:senderContext:handler:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connection:didReceiveMessage:fromSender:senderContext:handler:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connection:didReceiveMessage:fromSender:senderContext:handler:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connection:didReceiveMessage:fromSender:senderContext:handler:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__ANMessenger_connection_didReceiveMessage_fromSender_senderContext_handler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end