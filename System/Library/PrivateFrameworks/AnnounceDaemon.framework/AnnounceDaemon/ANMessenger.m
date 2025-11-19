@interface ANMessenger
+ (BOOL)_isAnnouncerAdminInAnnouncement:(id)a3 home:(id)a4;
+ (id)_performPreflightChecksForSendingContent:(id)a3 toHome:(id)a4;
+ (id)_performPreflightChecksForSendingToRooms:(id)a3 zones:(id)a4;
+ (id)announcementForDevice:(id)a3 inHome:(id)a4 fromAnnouncement:(id)a5;
+ (id)announcementForUser:(id)a3 inHome:(id)a4 fromAnnouncement:(id)a5;
+ (id)createAnnouncementWithRequest:(id)a3 forLocation:(id)a4 inHome:(id)a5 isReply:(BOOL)a6 error:(id *)a7;
+ (id)locationForHome:(id)a3 rooms:(id)a4 zones:(id)a5 idsService:(id)a6;
+ (id)locationForReplyToAnnouncement:(id)a3 home:(id)a4 idsService:(id)a5;
+ (id)performBasicValidationForAnnouncement:(id)a3 type:(unint64_t)a4;
+ (id)performIDSValidationForAnnouncement:(id)a3 withSenderContext:(id)a4;
+ (id)performPreflightChecksForSendingAnnouncementToHome:(id)a3 rooms:(id)a4 zones:(id)a5;
+ (id)performPreflightChecksForSendingContent:(id)a3 toHome:(id)a4 rooms:(id)a5 zones:(id)a6;
+ (id)validateAnnouncerInAnnouncement:(id)a3 home:(id)a4;
+ (void)_setIdentifiersForIDSService:(id)a3 inLocation:(id)a4 home:(id)a5;
- (ANMessenger)init;
- (ANMessenger)initWithIDSConnection:(id)a3 rapportConnection:(id)a4;
- (ANMessengerDelegate)delegate;
- (ANParticipant)localParticipant;
- (BOOL)_willTargetReachableDevicesForAnnouncement:(id)a3 inDestination:(id)a4;
- (double)_calculateAnnouncementDeadline:(id)a3;
- (id)connectionDidReceiveRequestForHomeLocationStatus:(id)a3;
- (id)getScanningDeviceCandidates;
- (void)_forwardRelayRequest:(id)a3 withSenderContext:(id)a4 sentHandler:(id)a5;
- (void)_fulfillRelayRequest:(id)a3 withSenderContext:(id)a4 sentHandler:(id)a5;
- (void)_logDebugInfoForHome:(id)a3;
- (void)_relayAnnouncementThroughHomePod:(id)a3 inHome:(id)a4 rooms:(id)a5 sentHandler:(id)a6;
- (void)_sendAnnouncement:(id)a3 toDestination:(id)a4 sentHandler:(id)a5;
- (void)broadcastReply:(id)a3 forAnnouncement:(id)a4 completion:(id)a5;
- (void)cleanForExit;
- (void)connection:(id)a3 didReceiveMessage:(id)a4 fromSender:(id)a5 senderContext:(id)a6 handler:(id)a7;
- (void)connection:(id)a3 failedDeliveryForMessage:(id)a4 withError:(id)a5;
- (void)forwardAnnouncementToCompanion:(id)a3;
- (void)mockAnnouncement:(id)a3 playbackDeadline:(id)a4 sentHandler:(id)a5;
- (void)sendAnnouncement:(id)a3 isRetry:(BOOL)a4 sentHandler:(id)a5;
- (void)sendReply:(id)a3 forAnnouncement:(id)a4 completion:(id)a5;
- (void)sendRequest:(id)a3 sentHandler:(id)a4;
@end

@implementation ANMessenger

- (ANMessenger)init
{
  v3 = objc_opt_new();
  v4 = +[ANRapportConnection sharedConnection];
  v5 = [(ANMessenger *)self initWithIDSConnection:v3 rapportConnection:v4];

  return v5;
}

- (ANMessenger)initWithIDSConnection:(id)a3 rapportConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ANMessenger;
  v9 = [(ANMessenger *)&v13 init];
  if (v9)
  {
    v10 = ANLogWithCategory();
    log = v9->_log;
    v9->_log = v10;

    objc_storeStrong(&v9->_idsConnection, a3);
    [(ANIDSConnectionProvider *)v9->_idsConnection setDelegate:v9];
    objc_storeStrong(&v9->_rapportConnection, a4);
    [(ANRapportConnectionProvider *)v9->_rapportConnection setDelegate:v9];
    +[ANMessenger purgeTemporaryFiles];
  }

  return v9;
}

- (void)cleanForExit
{
  v2 = [(ANMessenger *)self rapportConnection];
  [v2 deactivateLinkWithOptions:1];
}

- (ANParticipant)localParticipant
{
  v3 = objc_opt_new();
  v4 = [(ANMessenger *)self rapportConnection];
  v5 = [v4 localDevice];
  [v3 populateWithDevice:v5];

  return v3;
}

- (void)sendRequest:(id)a3 sentHandler:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 destination];
  v8 = [v7 type];

  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v9 = [v14 destination];
      v10 = [v9 replyToSender];

      v11 = [v14 destination];
      v12 = [v11 announcement];
      if (v10)
      {
        [(ANMessenger *)self sendReply:v14 forAnnouncement:v12 completion:v6];
      }

      else
      {
        [(ANMessenger *)self broadcastReply:v14 forAnnouncement:v12 completion:v6];
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] an_errorWithCode:1045 component:*MEMORY[0x277CEA9B8]];
      v6[2](v6, 0, v13);
    }
  }

  else
  {
    [(ANMessenger *)self sendAnnouncement:v14 sentHandler:v6];
  }
}

- (void)sendAnnouncement:(id)a3 isRetry:(BOOL)a4 sentHandler:(id)a5
{
  v6 = a4;
  v69 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 destination];
  v11 = [v10 home];

  if (v11)
  {
    v12 = [v8 destination];
    v13 = [v12 rooms];

    v14 = [v8 destination];
    v15 = [v14 zones];

    v16 = [v8 content];
    v57 = v15;
    v17 = [ANValidationHelper performPreflightChecksForSendingContent:v16 toHome:v11 rooms:v13 zones:v15];
    if (v17)
    {
      v18 = v17;
      v19 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v62 = v11;
        v63 = 2112;
        v64 = v13;
        v65 = 2112;
        v66 = v57;
        v67 = 2112;
        v68 = v18;
        _os_log_error_impl(&dword_23F525000, v19, OS_LOG_TYPE_ERROR, "Failed preflight check. Home = %@, Rooms = %@, Zones = %@, Error = %@", buf, 0x2Au);
      }

      v9[2](v9, 0, v18);
      v20 = +[ANAnalytics shared];
      v21 = [v18 code];
      v22 = [v16 endpointIdentifier];
      v23 = [ANAnalyticsContext contextWithEndpointID:v22];
      [v20 error:v21 context:v23];
    }

    else
    {
      v56 = v16;
      v25 = [(ANMessenger *)self idsConnection];
      v26 = [v25 service];
      v20 = [ANMessenger locationForHome:v11 rooms:v13 zones:v57 idsService:v26];

      v58 = 0;
      v22 = [ANMessenger createAnnouncementWithRequest:v8 forLocation:v20 inHome:v11 isReply:0 error:&v58];
      v18 = v58;
      if (v22)
      {
        v27 = [v20 flags];
        v23 = [MEMORY[0x277CD1F50] hmu_roomsInZones:v57 appendingRooms:v13];
        if (+[ANDemoStateManager isStoreDemoModeEnabled])
        {
          v28 = [(ANMessenger *)self log];
          v16 = v56;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "Demo Mode is Enabled. Will succeed without actually sending message", buf, 2u);
          }

          (v9)[2](v9, v22, 0);
        }

        else
        {
          v52 = v27;
          v16 = v56;
          if ([v22 isRelayRequest])
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

            [(ANMessenger *)self _relayAnnouncementThroughHomePod:v22 inHome:v11 rooms:v23 sentHandler:v9];
          }

          else
          {
            if (v52)
            {
              v38 = [v56 homeKitUserIdentifier];

              if (v38 && ([v56 homeKitUserIdentifier], v39 = objc_claimAutoreleasedReturnValue(), -[__CFString hmu_userWithUniqueIdentifier:](v11, "hmu_userWithUniqueIdentifier:", v39), v49 = objc_claimAutoreleasedReturnValue(), v39, v49))
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
              v40 = [v48 currentAccessory];
              v55 = v13;
              if (v40)
              {
                v46 = v40;
                v41 = [v56 endpointIdentifier];
                if (v41)
                {
                  v42 = MEMORY[0x277CBEBF8];
                }

                else
                {
                  v45 = +[ANHomeManager shared];
                  v43 = [v45 currentAccessory];
                  v59 = v43;
                  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];

                  v41 = 0;
                }

                v47 = v42;

                v40 = v46;
              }

              else
              {
                v47 = MEMORY[0x277CBEBF8];
              }

              v44 = [(ANMessenger *)self rapportConnection];
              v53 = [ANMessengerDestination destinationForHome:v11 excludingUsers:v51 excludingAccessories:v47 rapportConnection:v44];

              v13 = v55;
              v37 = v49;
            }

            else
            {
              v37 = [(ANMessenger *)self rapportConnection];
              v53 = [ANMessengerDestination destinationForAccessoriesInHome:v11 rooms:v23 rapportConnection:v37];
            }

            [(ANMessenger *)self _sendAnnouncement:v22 toDestination:v53 sentHandler:v9];
            v16 = v56;
          }
        }
      }

      else
      {
        v9[2](v9, 0, v18);
        v23 = +[ANAnalytics shared];
        v33 = [v18 code];
        [v16 endpointIdentifier];
        v34 = v54 = v13;
        v35 = [ANAnalyticsContext contextWithEndpointID:v34];
        [v23 error:v33 context:v35];

        v16 = v56;
        v13 = v54;
      }
    }
  }

  else if (v6)
  {
    v24 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9B8]];
    v9[2](v9, 0, v24);
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
    v31 = [v30 refreshHomeSynchronous];

    [(ANMessenger *)self sendAnnouncement:v8 isRetry:1 sentHandler:v9];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)sendReply:(id)a3 forAnnouncement:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ANHomeManager shared];
  v12 = [v9 location];
  v13 = [v12 homeUUID];
  v14 = [v11 homeForID:v13];

  v15 = [v9 location];
  v16 = [v15 copy];

  [v16 setFlags:0];
  v37 = v16;
  v38 = 0;
  v17 = [ANMessenger createAnnouncementWithRequest:v8 forLocation:v16 inHome:v14 isReply:1 error:&v38];
  v18 = v38;
  v19 = v18;
  if (v17)
  {
    v33 = v18;
    v34 = self;
    v35 = v8;
    v20 = objc_opt_new();
    v21 = [v9 announcer];
    v22 = [v21 isAccessory];

    v23 = [v9 announcer];
    v24 = [v23 homeKitID];
    if (v22)
    {
      v25 = [v14 hmu_accessoryWithUniqueIdentifierUUIDString:v24];

      if (v25)
      {
        [v20 addAccessory:v25];
      }
    }

    else
    {
      v25 = [v14 hmu_userWithUniqueIdentifierUUIDString:v24];

      if (v25)
      {
        [v20 addUser:v25 inHome:v14];
      }
    }

    v29 = v35;

    [(ANMessenger *)v34 _sendAnnouncement:v17 toDestination:v20 sentHandler:v10];
    v19 = v33;
  }

  else
  {
    v10[2](v10, 0, v18);
    v20 = +[ANAnalytics shared];
    v36 = v14;
    v26 = v10;
    v27 = [v19 code];
    v28 = [v8 content];
    [v28 endpointIdentifier];
    v30 = v29 = v8;
    v31 = [ANAnalyticsContext contextWithEndpointID:v30];
    v32 = v27;
    v10 = v26;
    v14 = v36;
    [v20 error:v32 context:v31];
  }
}

- (void)broadcastReply:(id)a3 forAnnouncement:(id)a4 completion:(id)a5
{
  v90 = *MEMORY[0x277D85DE8];
  v84 = a3;
  v8 = a4;
  v82 = a5;
  v9 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 identifier];
    *buf = 138412290;
    v89 = v10;
    _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Replying to Announcement: %@", buf, 0xCu);
  }

  v11 = +[ANHomeManager shared];
  v12 = [v8 location];
  v13 = [v12 homeUUID];
  v14 = [v11 homeForID:v13];

  v15 = [(ANMessenger *)self idsConnection];
  v16 = [v15 service];
  v17 = [ANMessenger locationForReplyToAnnouncement:v8 home:v14 idsService:v16];

  v85 = 0;
  v18 = [ANMessenger createAnnouncementWithRequest:v84 forLocation:v17 inHome:v14 isReply:1 error:&v85];
  v19 = v85;
  v20 = v19;
  v83 = v17;
  if (!v18)
  {
    v37 = v82;
    (*(v82 + 2))(v82, 0, v19);
    v22 = +[ANAnalytics shared];
    v40 = v20;
    v41 = [v20 code];
    v39 = [v84 content];
    v35 = [v39 endpointIdentifier];
    v42 = [ANAnalyticsContext contextWithEndpointID:v35];
    v43 = v41;
    v38 = v40;
    [v22 error:v43 context:v42];

    goto LABEL_40;
  }

  v80 = v19;
  v21 = [v17 allRoomsInHome:v14];
  v22 = [v21 mutableCopy];

  v23 = [v18 announcer];
  v24 = [v23 homeKitID];

  v81 = v24;
  if (v24)
  {
    v25 = [v18 announcer];
    v26 = [v25 isAccessory];

    if (v26)
    {
      v27 = [v14 hmu_accessoryWithUniqueIdentifierUUIDString:v81];
      v28 = [v27 room];

      if (v28)
      {
        v29 = [v17 roomUUIDs];
        v30 = v22;
        v31 = [v29 mutableCopy];

        v32 = [v28 uniqueIdentifier];
        [v31 removeObject:v32];

        v33 = [v31 copy];
        [v83 setRoomUUIDs:v33];

        [v30 removeObject:v28];
        v22 = v30;
      }
    }
  }

  if (![v18 isRelayRequest])
  {
    v44 = [v84 content];
    v45 = [v18 location];
    v46 = [v45 flags];

    v78 = v44;
    v79 = v22;
    if (v46)
    {
      v54 = [v44 homeKitUserIdentifier];

      if (v54 && ([v44 homeKitUserIdentifier], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "hmu_userWithUniqueIdentifier:", v55), v56 = objc_claimAutoreleasedReturnValue(), v55, v56))
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
      v59 = [v58 currentAccessory];
      if (v59)
      {
        v60 = [v44 endpointIdentifier];
        if (v60)
        {
          v61 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v64 = +[ANHomeManager shared];
          v75 = [v64 currentAccessory];
          v86 = v75;
          v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
        }
      }

      else
      {
        v61 = MEMORY[0x277CBEBF8];
      }

      v65 = [(ANMessenger *)self rapportConnection];
      v66 = v57;
      v35 = [ANMessengerDestination destinationForHome:v14 excludingUsers:v57 excludingAccessories:v61 rapportConnection:v65];

      v38 = v80;
      v39 = v81;
      v63 = v76;
      goto LABEL_37;
    }

    v47 = [v22 copy];
    v48 = [(ANMessenger *)self rapportConnection];
    v35 = [ANMessengerDestination destinationForAccessoriesInHome:v14 rooms:v47 rapportConnection:v48];

    v49 = [v8 announcer];
    v50 = [v49 homeKitUserID];

    v51 = [v8 announcer];
    v52 = v51;
    if (v50)
    {
      v53 = [v51 homeKitUserID];
    }

    else
    {
      v62 = [v51 isAccessory];

      if (v62)
      {
        v63 = 0;
        goto LABEL_32;
      }

      v52 = [v8 announcer];
      v53 = [v52 homeKitID];
    }

    v67 = v53;
    v63 = [v14 hmu_userWithUniqueIdentifierUUIDString:v53];

LABEL_32:
    v68 = [v44 homeKitUserIdentifier];
    if (v68)
    {
      v69 = v68;
      v77 = [v44 homeKitUserIdentifier];
      v70 = [v77 UUIDString];
      v71 = [v8 announcer];
      v72 = [v71 homeKitUserID];
      LODWORD(v75) = [v70 isEqualToString:v72];

      if (v75)
      {
        v38 = v80;
        v39 = v81;
LABEL_38:

LABEL_39:
        v73 = self;
        v37 = v82;
        [(ANMessenger *)v73 _sendAnnouncement:v18 toDestination:v35 sentHandler:v82, v75];

        v22 = v79;
        goto LABEL_40;
      }
    }

    if (!v63)
    {
      v38 = v80;
      v39 = v81;
      goto LABEL_39;
    }

    v66 = [(ANMessenger *)self rapportConnection];
    [v35 addUser:v63 inHome:v14 rapportConnection:v66];
    v38 = v80;
    v39 = v81;
LABEL_37:

    goto LABEL_38;
  }

  v34 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23F525000, v34, OS_LOG_TYPE_DEFAULT, "Sending (Reply) Relay Request", buf, 2u);
  }

  v35 = [v22 copy];
  v36 = self;
  v37 = v82;
  [(ANMessenger *)v36 _relayAnnouncementThroughHomePod:v18 inHome:v14 rooms:v35 sentHandler:v82];
  v38 = v80;
  v39 = v81;
LABEL_40:

  v74 = *MEMORY[0x277D85DE8];
}

- (void)forwardAnnouncementToCompanion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANMessenger *)self rapportConnection];
  v6 = [v5 devices];
  v7 = [v6 pairedCompanion];

  if (v7 && [v7 supportsAnnounce])
  {
    v8 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 name];
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "Forwarding announcement to companion %@", buf, 0xCu);
    }

    v10 = +[ANHomeManager shared];
    v11 = [v4 location];
    v12 = [v11 homeUUID];
    v13 = [v10 homeForID:v12];

    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "homeLocationStatus")}];
      v15 = [v4 location];
      [v15 setHomeLocationStatus:v14];

      v16 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v13 homeLocationStatus];
        *buf = 134217984;
        v29 = v17;
        _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_INFO, "Inserted Home Location Status: %ld", buf, 0xCu);
      }

      v18 = [v4 announcerNameInHome:v13];
      v19 = ANLocalizedString();
      v20 = [v18 isEqualToString:v19];

      if ((v20 & 1) == 0)
      {
        v21 = [v4 announcer];
        [v21 setName:v18];
      }
    }

    v22 = [(ANMessenger *)self rapportConnection];
    v23 = [v4 messageForCompanion];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __46__ANMessenger_forwardAnnouncementToCompanion___block_invoke;
    v27[3] = &unk_278C862B8;
    v27[4] = self;
    v24 = [v22 sendMessage:v23 device:v7 responseHandler:v27];

    if (v24)
    {
      v25 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(ANMessenger *)v7 forwardAnnouncementToCompanion:v24, v25];
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

- (void)mockAnnouncement:(id)a3 playbackDeadline:(id)a4 sentHandler:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 destination];
  v12 = [v11 home];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CEABA8]);
    v14 = [v12 uniqueIdentifier];
    v15 = [v13 initWithHomeID:v14];

    [v15 setFlags:1];
    v32 = 0;
    v16 = [ANMessenger createAnnouncementWithRequest:v8 forLocation:v15 inHome:v12 isReply:1 error:&v32];
    v17 = v32;
    if (v16)
    {
      [v16 setPlaybackDeadline:v9];
      v18 = [v16 playbackDeadline];

      if (!v18)
      {
        v19 = MEMORY[0x277CBEAA8];
        [(ANMessenger *)self _calculateAnnouncementDeadline:v16];
        v21 = v20;
        v22 = [MEMORY[0x277CBEAA8] date];
        v23 = [v19 dateWithTimeInterval:v22 sinceDate:v21];
        [v16 setPlaybackDeadline:v23];
      }

      v24 = [MEMORY[0x277CEABD0] senderWithID:&stru_2851BDB18 type:0];
      [v16 setSender:v24];

      v25 = objc_alloc(MEMORY[0x277CEAB48]);
      v26 = [v16 message];
      v27 = [v25 initWithMessage:v26];

      v28 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v34 = "[ANMessenger mockAnnouncement:playbackDeadline:sentHandler:]";
        v35 = 2112;
        v36 = v27;
        _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "%s: Sending announcement: %@", buf, 0x16u);
      }

      v29 = [(ANMessenger *)self delegate];
      [v29 receivedAnnouncement:v27];

      v10[2](v10, v27, 0);
    }

    else
    {
      (v10)[2](v10, 0, v17);
    }
  }

  else
  {
    v30 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9B8]];
    (v10)[2](v10, 0, v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_relayAnnouncementThroughHomePod:(id)a3 inHome:(id)a4 rooms:(id)a5 sentHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(ANMessenger *)self rapportConnection];
  v17 = 0;
  v15 = [ANMessengerDestination relayDestinationForHome:v13 rooms:v12 rapportConnection:v14 error:&v17];

  v16 = v17;
  if (v15)
  {
    [(ANMessenger *)self _sendAnnouncement:v10 toDestination:v15 sentHandler:v11];
  }

  else
  {
    v11[2](v11, 0, v16);

    v11 = +[ANAnalytics shared];
    [v11 error:{objc_msgSend(v16, "code")}];
  }
}

- (double)_calculateAnnouncementDeadline:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CEAB80] sharedInstance];
  v6 = [v5 numberForDefault:*MEMORY[0x277CEA830]];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 fileData];

  if (v9)
  {
    v10 = [v4 fileData];
    v11 = [v10 length];

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

- (void)_fulfillRelayRequest:(id)a3 withSenderContext:(id)a4 sentHandler:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v7 action];
  if (v9 == 4)
  {
    v10 = 2;
  }

  else
  {
    if (v9 != 5)
    {
      goto LABEL_6;
    }

    v10 = 3;
  }

  [v7 setAction:v10];
LABEL_6:
  v11 = +[ANHomeManager shared];
  v12 = [v7 location];
  v13 = [v12 homeUUID];
  v14 = [v11 homeForID:v13];

  v15 = [v7 location];
  if ([v15 flags])
  {
    v19 = [v7 announcer];
    v20 = [v19 homeKitID];
    v16 = [v14 hmu_userWithUniqueIdentifierUUIDString:v20];

    if (v16)
    {
      v32[0] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    v21 = [(ANMessenger *)self rapportConnection];
    v22 = MEMORY[0x277CBEBF8];
    v18 = [ANMessengerDestination destinationForHome:v14 excludingUsers:v17 excludingAccessories:MEMORY[0x277CBEBF8] rapportConnection:v21];

    [v15 setFlags:{objc_msgSend(v15, "flags") & 0xFFFFFFFFFFFFFFFDLL}];
    [v15 setFlags:{objc_msgSend(v15, "flags") & 0xFFFFFFFFFFFFFFFBLL}];
    [v15 setUserUUIDs:v22];
    [v15 setDeviceIDs:v22];
  }

  else
  {
    v16 = [v15 allRoomsInHome:v14];
    v17 = [(ANMessenger *)self rapportConnection];
    v18 = [ANMessengerDestination destinationForAccessoriesInHome:v14 rooms:v16 rapportConnection:v17];
  }

  v23 = MEMORY[0x277CBEAA8];
  [(ANMessenger *)self _calculateAnnouncementDeadline:v7];
  v25 = v24;
  v26 = [MEMORY[0x277CBEAA8] date];
  v27 = [v23 dateWithTimeInterval:v26 sinceDate:v25];
  [v7 setPlaybackDeadline:v27];

  v31 = 0;
  [v7 processAudioWithEffects:objc_msgSend(MEMORY[0x277CEAB48] error:{"defaultAudioEffects"), &v31}];
  v28 = v31;
  if (v28)
  {
    v29 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [ANMessenger _fulfillRelayRequest:withSenderContext:sentHandler:];
    }
  }

  [(ANMessenger *)self _sendAnnouncement:v7 toDestination:v18 sentHandler:v8];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_forwardRelayRequest:(id)a3 withSenderContext:(id)a4 sentHandler:(id)a5
{
  v26 = a3;
  v7 = a5;
  v8 = [(ANMessenger *)self rapportConnection];
  v9 = [v8 devices];
  v10 = [v9 pairedCompanion];

  v11 = [v26 sender];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [v11 identifier];
    v14 = [v10 idsDeviceIdentifier];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      v16 = +[ANHomeManager shared];
      v17 = [v26 location];
      v18 = [v17 homeUUID];
      v19 = [v16 homeForID:v18];

      v20 = [v26 location];
      v21 = [v20 allRoomsInHome:v19];

      [(ANMessenger *)self _relayAnnouncementThroughHomePod:v26 inHome:v19 rooms:v21 sentHandler:v7];
    }

    else
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = [v12 identifier];
      v24 = [v10 identifier];
      v19 = [v22 stringWithFormat:@"Sender is not companion: %@ != %@", v23, v24];

      v25 = [MEMORY[0x277CCA9B8] an_errorWithCode:1030 component:*MEMORY[0x277CEA9B8] description:v19];
      v7[2](v7, v26, v25);
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] an_errorWithCode:1030 component:*MEMORY[0x277CEA9B8] description:@"Unable to validate sender"];
    v7[2](v7, v26, v19);
  }
}

- (void)_sendAnnouncement:(id)a3 toDestination:(id)a4 sentHandler:(id)a5
{
  v176 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v146 = v9;
  v11 = [v9 home];
  [(ANMessenger *)self _logDebugInfoForHome:v11];

  v12 = [MEMORY[0x277CEAB80] sharedInstance];
  v13 = [v12 BOOLForDefault:*MEMORY[0x277CEA8E0]];

  if (v13)
  {
    v14 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ANMessenger _sendAnnouncement:toDestination:sentHandler:];
    }

    v15 = [MEMORY[0x277CCA9B8] an_errorWithCode:1036 component:*MEMORY[0x277CEA9B8] description:@"Force Send Failure Enabled in User Defaults"];
    v10[2](v10, 0, v15);
    goto LABEL_89;
  }

  v16 = [v8 playbackDeadline];

  if (!v16)
  {
    v17 = MEMORY[0x277CBEAA8];
    [(ANMessenger *)self _calculateAnnouncementDeadline:v8];
    v19 = v18;
    v20 = [MEMORY[0x277CBEAA8] date];
    v21 = [v17 dateWithTimeInterval:v20 sinceDate:v19];
    [v8 setPlaybackDeadline:v21];
  }

  v22 = [(ANMessenger *)self idsConnection];
  v23 = [v22 service];
  v24 = [v9 participantsWithService:v23];
  [v8 setListeners:v24];

  v25 = [v8 listeners];
  v26 = [v25 count];

  v27 = +[ANHomeManager shared];
  v28 = [v27 currentAccessory];

  if (!v26)
  {
    if (v28)
    {
      v32 = [v8 location];
      if ([v32 flags])
      {
        v124 = [v9 home];
        v125 = [v124 usersIncludingCurrentUserWithAnnounceEnabled];
        v126 = [v125 count];

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

  if (v28)
  {
    if (![(ANMessenger *)self _willTargetReachableDevicesForAnnouncement:v8 inDestination:v9])
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CEA9B8];
      v31 = 1009;
LABEL_87:
      v15 = [v29 an_errorWithCode:v31 component:v30];
      v10[2](v10, 0, v15);
      v127 = +[ANAnalytics shared];
      v128 = [v15 code];
      v129 = [v8 announcer];
      v130 = [ANAnalyticsContext contextWithAnnouncer:v129];
      [v127 error:v128 context:v130];

LABEL_88:
LABEL_89:

      goto LABEL_90;
    }
  }

  else if ([v8 isRelayRequest])
  {
    v33 = [v9 accessories];
    v34 = [v33 count];

    if (v34)
    {
      v35 = [v9 accessories];
      v169[0] = MEMORY[0x277D85DD0];
      v169[1] = 3221225472;
      v169[2] = __59__ANMessenger__sendAnnouncement_toDestination_sentHandler___block_invoke;
      v169[3] = &unk_278C862E0;
      v169[4] = self;
      v15 = [v35 hmu_compactMap:v169];

      if (![v15 count])
      {
        v132 = [(ANMessenger *)self log];
        if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          [ANMessenger _sendAnnouncement:v9 toDestination:v132 sentHandler:?];
        }

        v127 = [MEMORY[0x277CCA9B8] an_errorWithCode:1009 component:*MEMORY[0x277CEA9B8]];
        v10[2](v10, 0, v127);
        v133 = +[ANAnalytics shared];
        [v133 error:{objc_msgSend(v127, "code")}];

        goto LABEL_88;
      }
    }
  }

  v36 = [MEMORY[0x277CEAB80] sharedInstance];
  v37 = [v36 numberForDefault:*MEMORY[0x277CEA958]];
  [v37 doubleValue];
  v39 = v38;

  v40 = [MEMORY[0x277CEABF0] sharedManager];
  [v40 transaction:*MEMORY[0x277CEAB18] setActiveForTimeInterval:v39];

  v41 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v173 = v8;
    _os_log_impl(&dword_23F525000, v41, OS_LOG_TYPE_DEFAULT, "Sending Message: %@", buf, 0xCu);
  }

  v134 = v10;

  v42 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [v8 listeners];
    v44 = [v43 count];
    *buf = 134217984;
    *v173 = v44;
    _os_log_impl(&dword_23F525000, v42, OS_LOG_TYPE_DEFAULT, "Sending To %lu Participants", buf, 0xCu);
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v45 = [v8 listeners];
  v46 = [v45 countByEnumeratingWithState:&v165 objects:v175 count:16];
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
          objc_enumerationMutation(v45);
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

      v47 = [v45 countByEnumeratingWithState:&v165 objects:v175 count:16];
    }

    while (v47);
  }

  v53 = [v8 announcer];
  v144 = [ANAnalyticsContext contextWithAnnouncer:v53];

  v54 = [v146 devices];
  v143 = [v54 count];

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
        v59 = [v146 home];
        v60 = [ANMessenger announcementForDevice:v58 inHome:v59 fromAnnouncement:v8];
        v61 = [v60 message];

        v62 = [(ANMessenger *)self rapportConnection];
        v155[0] = MEMORY[0x277D85DD0];
        v155[1] = 3221225472;
        v155[2] = __59__ANMessenger__sendAnnouncement_toDestination_sentHandler___block_invoke_45;
        v155[3] = &unk_278C86308;
        v156 = v8;
        v157 = self;
        v158 = v146;
        v160 = v143;
        v159 = v144;
        v63 = [v62 sendMessage:v61 device:v58 responseHandler:v155];

        if (v63)
        {
          v64 = [(ANMessenger *)self log];
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v65 = [v58 name];
            *buf = 138412546;
            *v173 = v65;
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

  v66 = [v146 users];
  obja = [v66 count];

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v136 = [v146 users];
  v67 = [v136 countByEnumeratingWithState:&v151 objects:v171 count:16];
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
          objc_enumerationMutation(v136);
        }

        v70 = *(*(&v151 + 1) + 8 * k);
        v71 = [v70 hmu_idsDestination];
        if (v71)
        {
          v72 = [v146 home];
          v73 = [ANMessenger announcementForUser:v70 inHome:v72 fromAnnouncement:v8];
          v74 = [v73 message];

          v75 = [(ANMessenger *)self idsConnection];
          v76 = [v8 identifier];
          v77 = [v75 sendMessage:v74 messageUUIDString:v76 destination:v71];

          v78 = [MEMORY[0x277CBEAA8] now];
          v79 = [v8 creationTimestamp];
          [v78 timeIntervalSinceDate:v79];
          v81 = v80;

          v82 = [(ANMessenger *)self log];
          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            *v173 = v81;
            *&v173[8] = 2112;
            *&v173[10] = v71;
            _os_log_impl(&dword_23F525000, v82, OS_LOG_TYPE_INFO, "Took %f sec to send over IDS to %@", buf, 0x16u);
          }

          if (v77)
          {
            v83 = [(ANMessenger *)self log];
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v87 = [v70 userID];
              *buf = 138412546;
              *v173 = v87;
              *&v173[8] = 2112;
              *&v173[10] = v77;
              _os_log_error_impl(&dword_23F525000, v83, OS_LOG_TYPE_ERROR, "Failed to send Message for User %@: %@", buf, 0x16u);
            }

            ++v145;
          }

          v84 = +[ANAnalytics shared];
          v85 = [v146 home];
          v86 = [v85 uniqueIdentifier];
          [v84 announcementSent:v8 inHome:v86 withError:objc_msgSend(v77 withTime:"code") sendType:2 ofGroupCount:obja context:{v144, v81}];
        }
      }

      v68 = [v136 countByEnumeratingWithState:&v151 objects:v171 count:16];
    }

    while (v68);
  }

  v88 = [v146 accessories];
  v137 = [v88 count];

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v135 = [v146 accessories];
  v89 = [v135 countByEnumeratingWithState:&v147 objects:v170 count:16];
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
          objc_enumerationMutation(v135);
        }

        v92 = *(*(&v147 + 1) + 8 * m);
        v93 = [(ANMessenger *)self idsConnection];
        v94 = [v93 service];
        v95 = [v92 hmu_destinationForService:v94];

        v96 = [v95 destinationURIs];
        v97 = [v96 count];

        if (v97)
        {
          v98 = [v146 home];
          v99 = [ANMessenger announcementForAccessory:v92 inHome:v98 fromAnnouncement:v8];
          v100 = [v99 message];

          v101 = [(ANMessenger *)self idsConnection];
          v102 = [v8 identifier];
          v103 = [v101 sendMessage:v100 messageUUIDString:v102 destination:v95];

          v104 = [MEMORY[0x277CBEAA8] now];
          v105 = [v8 creationTimestamp];
          [v104 timeIntervalSinceDate:v105];
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
              v113 = [v92 name];
              *buf = 138412546;
              *v173 = v113;
              *&v173[8] = 2112;
              *&v173[10] = v103;
              _os_log_error_impl(&dword_23F525000, v109, OS_LOG_TYPE_ERROR, "Failed to send Message for User %@: %@", buf, 0x16u);
            }

            ++v145;
          }

          v110 = +[ANAnalytics shared];
          v111 = [v146 home];
          v112 = [v111 uniqueIdentifier];
          [v110 announcementSent:v8 inHome:v112 withError:objc_msgSend(v103 withTime:"code") sendType:3 ofGroupCount:v137 context:{v144, v107}];
        }

        else
        {
          if ([v92 hmu_isEndpoint])
          {
            goto LABEL_77;
          }

          v100 = [(ANMessenger *)self log];
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            v114 = [v92 name];
            v115 = [v92 uniqueIdentifier];
            *buf = 138412546;
            *v173 = v114;
            *&v173[8] = 2112;
            *&v173[10] = v115;
            _os_log_error_impl(&dword_23F525000, v100, OS_LOG_TYPE_ERROR, "No IDS URI for Accessory: %@, %@", buf, 0x16u);
          }
        }

LABEL_77:
      }

      v90 = [v135 countByEnumeratingWithState:&v147 objects:v170 count:16];
    }

    while (v90);
  }

  v10 = v134;
  (v134)[2](v134, v8, 0);
  v116 = [MEMORY[0x277CBEAA8] now];
  v117 = [v8 creationTimestamp];
  [v116 timeIntervalSinceDate:v117];
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
  v122 = [v146 home];
  v123 = [v122 uniqueIdentifier];
  [v121 announcementSent:v8 inHome:v123 withError:v120 withTime:0 sendType:&obja[v143 + v137] ofGroupCount:v144 context:v119];

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

- (BOOL)_willTargetReachableDevicesForAnnouncement:(id)a3 inDestination:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 location];
  if ([v7 flags] & 1) != 0 || (objc_msgSend(v5, "isRelayType"))
  {
  }

  else
  {
    v10 = [v5 action];

    if (v10 != 1)
    {
      v11 = [v6 home];
      v12 = [v5 location];
      v13 = [v12 allRoomsInHome:v11];

      v14 = MEMORY[0x277CD1650];
      v15 = [MEMORY[0x277CD1D88] hmu_accessoriesInRooms:v13];
      v16 = [v14 announceAccessoriesWithAnnounceEnabledFromAccessories:v15];

      v17 = [v16 na_map:&__block_literal_global_0];
      v18 = [v6 devices];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __72__ANMessenger__willTargetReachableDevicesForAnnouncement_inDestination___block_invoke_2;
      v21[3] = &unk_278C86350;
      v22 = v17;
      v19 = v17;
      v20 = [v18 na_firstObjectPassingTest:v21];

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
  v4 = [(ANMessenger *)self idsConnection];
  v5 = [v4 service];
  v6 = [v5 devices];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if (([v11 isHomePod] & 1) == 0)
        {
          v12 = [v11 nsuuid];

          if (v12)
          {
            v13 = [v11 nsuuid];
            v14 = [v13 UUIDString];
            [v3 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
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

- (void)_logDebugInfoForHome:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ANMessenger__logDebugInfoForHome___block_invoke;
  v7[3] = &unk_278C86378;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)connection:(id)a3 didReceiveMessage:(id)a4 fromSender:(id)a5 senderContext:(id)a6 handler:(id)a7
{
  v69 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ANMessenger *)self log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v66 = *&v14;
    v67 = 2112;
    v68 = v13;
    _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "Received Message From (%@): %@", buf, 0x16u);
  }

  v18 = [objc_alloc(MEMORY[0x277CEAB48]) initWithMessage:v13];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    v20 = [v18 creationTimestamp];
    [v19 timeIntervalSinceDate:v20];
    v22 = v21;

    [v18 setSender:v14];
    v23 = [ANValidationHelper performBasicValidationForAnnouncement:v18 type:1];
    v61 = v16;
    if (v23)
    {
      v24 = v23;
      v25 = v13;
      v26 = v14;
      v27 = v12;
      v28 = v15;
      v29 = [(ANMessenger *)self log];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
      }

      v30 = +[ANAnalytics shared];
      v31 = [v24 code];
      v32 = [v18 announcer];
      v33 = [ANAnalyticsContext contextWithAnnouncer:v32];
      [v30 error:v31 context:v33];

      goto LABEL_8;
    }

    v37 = [(ANMessenger *)self idsConnection];

    if (v37 == v12)
    {
      v44 = [ANMessenger performIDSValidationForAnnouncement:v18 withSenderContext:v15];
      if (v44)
      {
        v24 = v44;
        v25 = v13;
        v26 = v14;
        v27 = v12;
        v28 = v15;
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
      v38 = [(ANMessenger *)self rapportConnection];

      if (v38 != v12)
      {
        v60 = v15;
        v24 = [MEMORY[0x277CCA9B8] an_errorWithCode:5018 component:*MEMORY[0x277CEA9B8]];
        v39 = [(ANMessenger *)self log];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
        }

        v40 = +[ANAnalytics shared];
        v41 = [v24 code];
        v42 = [v18 announcer];
        v43 = [ANAnalyticsContext contextWithAnnouncer:v42];
        [v40 error:v41 context:v43];

        v16 = v61;
        (v61)[2](v61, v24);
        v15 = v60;
        goto LABEL_12;
      }

      v46 = [ANMessenger performRapportValidationForAnnouncement:v18 withSenderContext:v15];
      if (v46)
      {
        v24 = v46;
        v25 = v13;
        v26 = v14;
        v27 = v12;
        v28 = v15;
        v45 = [(ANMessenger *)self log];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
        }

LABEL_24:

        v47 = +[ANAnalytics shared];
        v48 = [v24 code];
        v49 = [v18 announcer];
        v50 = [ANAnalyticsContext contextWithAnnouncer:v49];
        [v47 error:v48 context:v50];

LABEL_8:
        v16 = v61;
        (v61)[2](v61, v24);
        v15 = v28;
        v12 = v27;
        v14 = v26;
        v13 = v25;
        goto LABEL_12;
      }
    }

    v51 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = [(ANMessenger *)self rapportConnection];
      v53 = @"IDS";
      if (v52 == v12)
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
      v54 = [v18 announcer];
      v55 = [ANAnalyticsContext contextWithAnnouncer:v54];

      v56 = +[ANAnalytics shared];
      v57 = [(ANMessenger *)self rapportConnection];
      [v56 announcementReceived:v18 withTime:v57 != v12 receiveTimeType:v55 context:v22];
    }

    v58 = +[ANHomeManager shared];
    v24 = [v58 currentAccessory];

    if (([v18 action] & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v16 = v61;
      if (!v24)
      {
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __77__ANMessenger_connection_didReceiveMessage_fromSender_senderContext_handler___block_invoke;
        v63[3] = &unk_278C863A0;
        v63[4] = self;
        v64 = v61;
        [(ANMessenger *)self _forwardRelayRequest:v18 withSenderContext:v15 sentHandler:v63];

        goto LABEL_12;
      }

      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __77__ANMessenger_connection_didReceiveMessage_fromSender_senderContext_handler___block_invoke_59;
      v62[3] = &unk_278C863C8;
      v62[4] = self;
      [(ANMessenger *)self _fulfillRelayRequest:v18 withSenderContext:v15 sentHandler:v62];
    }

    v59 = [(ANMessenger *)self delegate];
    [v59 receivedAnnouncement:v18];

    v16 = v61;
    v61[2](v61, 0);
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] an_errorWithCode:5017 component:*MEMORY[0x277CEA9B8]];
    v34 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
    }

    v35 = +[ANAnalytics shared];
    [v35 error:{objc_msgSend(v24, "code")}];

    (*(v16 + 2))(v16, v24);
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

- (void)connection:(id)a3 failedDeliveryForMessage:(id)a4 withError:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CEAB48];
  v9 = a4;
  v10 = [[v8 alloc] initWithMessage:v9];

  if (v10)
  {
    v11 = [(ANMessenger *)self delegate];
    [v11 failedToDeliverAnnouncement:v10 error:v7];
  }

  else
  {
    v11 = [(ANMessenger *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ANMessenger connection:didReceiveMessage:fromSender:senderContext:handler:];
    }
  }
}

- (id)connectionDidReceiveRequestForHomeLocationStatus:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = +[ANHomeManager shared];
  v5 = [v4 allHomes];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
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
        v13 = [v11 uniqueIdentifier];
        [v3 setObject:v12 forKeyedSubscript:v13];
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

+ (id)createAnnouncementWithRequest:(id)a3 forLocation:(id)a4 inHome:(id)a5 isReply:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v72 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v11 content];
  v15 = [v14 audioFileURL];
  v65 = 0;
  v16 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v15 options:2 error:&v65];
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
      v69 = v15;
      v70 = 2112;
      v71 = v17;
      _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_ERROR, "%@Failed to load data from file: URL = %@, Error = %@", buf, 0x20u);
    }

    if (a7)
    {
      v20 = v17;
      v21 = 0;
      *a7 = v17;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_44;
  }

  log = v8;
  v63 = v11;
  v54 = a7;
  v61 = v13;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "length")}];
    *buf = 138412802;
    v67 = &stru_2851BDB18;
    v68 = 2112;
    v69 = v15;
    v70 = 2112;
    v71 = v22;
    _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Loaded audio file data from URL (%@) of size %@", buf, 0x20u);
  }

  v23 = [objc_alloc(MEMORY[0x277CEAB60]) initWithData:v16 type:1];
  [v23 setFlags:1];
  v24 = objc_opt_new();
  v59 = v23;
  [v24 addObject:v23];
  v25 = [v14 transcription];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 dataUsingEncoding:4];
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
  v60 = v12;
  [v29 setLocation:v12];
  v33 = [MEMORY[0x277CBEAA8] date];
  [v29 setCreationTimestamp:v33];

  v34 = MEMORY[0x277CEAB48];
  v35 = [v63 clientID];
  [v29 setSource:{objc_msgSend(v34, "sourceFromString:", v35)}];

  v36 = [MEMORY[0x277CEAB80] sharedInstance];
  LODWORD(v35) = [v36 BOOLForDefault:*MEMORY[0x277CEA940]];

  v37 = +[ANHomeManager shared];
  v38 = [v37 currentAccessory];

  if (v35 && !v38)
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
    v13 = v61;
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
  v13 = v61;
  v42 = v62;
  v39 = v38;
  if (v38)
  {
    v43 = [v14 homeKitUserIdentifier];
    if (v43)
    {
      v44 = [v61 hmu_userWithUniqueIdentifier:v43];
      if (!v44)
      {
        v45 = 0;
LABEL_34:

        v47 = [v29 announcer];
        [v47 populateWithUser:v44 andAccessory:v39];

        v13 = v61;
        goto LABEL_35;
      }

      if ([v61 announceAccessAllowedForUser:v44])
      {
        v45 = ANLogHandleMessenger_Announcement();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v53 = [v44 name];
          [v44 uniqueIdentifier];
          v46 = loga = v45;
          *buf = 138412802;
          v67 = &stru_2851BDB18;
          v68 = 2112;
          v69 = v53;
          v70 = 2112;
          v71 = v46;
          _os_log_impl(&dword_23F525000, loga, OS_LOG_TYPE_DEFAULT, "%@Recognized User with Announce access. Not sending to personal devices for user. %@, %@", buf, 0x20u);

          v45 = loga;
        }

        goto LABEL_34;
      }

      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    v44 = 0;
    goto LABEL_34;
  }

LABEL_29:
  v43 = [v29 announcer];
  v44 = [v13 currentUser];
  [v43 populateWithUser:v44];
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

    if (v54)
    {
      v50 = v48;
      v21 = 0;
      *v54 = v48;
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

  v12 = v60;
  v11 = v63;
LABEL_44:

  v51 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)announcementForDevice:(id)a3 inHome:(id)a4 fromAnnouncement:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v9 isRelayRequest] & 1) != 0 || +[ANMessenger _isAnnouncerAdminInAnnouncement:home:](ANMessenger, "_isAnnouncerAdminInAnnouncement:home:", v9, v8) || objc_msgSend(v7, "isOwnerDevice"))
  {
    v10 = v9;
  }

  else
  {
    v13 = [v7 homeKitUserIdentifiers];
    v14 = v13;
    if (v13)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = [v8 hmu_userWithUniqueIdentifier:{*(*(&v22 + 1) + 8 * i), v22}];
            if (v20)
            {
              v21 = v20;
              v10 = [ANMessenger announcementForUser:v20 inHome:v8 fromAnnouncement:v9];

              goto LABEL_20;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

    v10 = [v9 copy];
    v15 = [v10 announcer];
    [v15 clearIdentifiers];
LABEL_20:
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)announcementForUser:(id)a3 inHome:(id)a4 fromAnnouncement:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (+[ANMessenger _isAnnouncerAdminInAnnouncement:home:](ANMessenger, "_isAnnouncerAdminInAnnouncement:home:", v9, v8) || ([v8 hmu_isAdministrator:v7] & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = [v9 copy];
    v11 = [v10 announcer];
    [v11 clearIdentifiers];
  }

  return v10;
}

+ (id)locationForHome:(id)a3 rooms:(id)a4 zones:(id)a5 idsService:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CEABA8];
  v13 = a6;
  v14 = [v12 alloc];
  v15 = [v9 uniqueIdentifier];
  v16 = [v14 initWithHomeID:v15];

  if ([v10 count] || objc_msgSend(v11, "count"))
  {
    [v16 setFlags:0];
    v17 = MEMORY[0x277CD1D88];
    v18 = [MEMORY[0x277CD1D88] an_roomsWithAnnounceAccessoriesFromRooms:v10];
    v19 = [v17 hmu_uniqueIdentifiersFromRooms:v18];
    [v16 setRoomUUIDs:v19];

    v20 = MEMORY[0x277CD1F50];
    v21 = [MEMORY[0x277CD1F50] an_zonesWithAnnounceAccessoriesFromZones:v11];
    v22 = [v20 hmu_uniqueIdentifiersFromZones:v21];
    [v16 setZoneUUIDs:v22];
  }

  else
  {
    [v16 setFlags:1];
  }

  [ANMessenger _setIdentifiersForIDSService:v13 inLocation:v16 home:v9];

  return v16;
}

+ (id)locationForReplyToAnnouncement:(id)a3 home:(id)a4 idsService:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 location];
  if (([v10 flags] & 1) == 0)
  {
    v11 = objc_alloc(MEMORY[0x277CEABA8]);
    v12 = [v10 homeUUID];
    v13 = [v11 initWithHomeID:v12];

    v14 = MEMORY[0x277CBEB58];
    v15 = [v10 roomUUIDs];
    v16 = [v8 hmu_roomsWithUniqueIdentifiers:v15];
    v34 = [v14 setWithArray:v16];

    v17 = MEMORY[0x277CBEB58];
    v18 = [v10 zoneUUIDs];
    v19 = [v8 hmu_zonesWithUniqueIdentifiers:v18];
    v20 = [v17 setWithArray:v19];

    v21 = [v7 announcer];
    if ([v21 isAccessory])
    {
      v22 = [v7 announcer];
      v23 = [v22 homeKitID];

      if (!v23)
      {
LABEL_7:
        v27 = MEMORY[0x277CD1D88];
        v28 = [v34 allObjects];
        v29 = [v27 hmu_uniqueIdentifiersFromRooms:v28];
        [v13 setRoomUUIDs:v29];

        v30 = MEMORY[0x277CD1F50];
        v31 = [v20 allObjects];
        v32 = [v30 hmu_uniqueIdentifiersFromZones:v31];
        [v13 setZoneUUIDs:v32];

        goto LABEL_9;
      }

      v24 = [v7 announcer];
      v25 = [v24 homeKitID];
      v26 = [v8 hmu_accessoryWithUniqueIdentifierUUIDString:v25];
      v21 = [v26 room];

      if (v21)
      {
        [v34 addObject:v21];
      }
    }

    goto LABEL_7;
  }

  v13 = [v10 copy];
LABEL_9:
  [ANMessenger _setIdentifiersForIDSService:v9 inLocation:v13 home:v8];

  return v13;
}

+ (BOOL)_isAnnouncerAdminInAnnouncement:(id)a3 home:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 announcer];
  v8 = [v7 homeKitID];

  if (v8)
  {
    v9 = [v5 announcer];
    v10 = [v9 isAccessory];

    if (v10)
    {
      v11 = [v5 announcer];
      v12 = [v11 homeKitUserID];

      if (!v12)
      {
        v15 = [v6 hmu_accessoryWithUniqueIdentifierUUIDString:v8];
        v16 = v15 != 0;
        goto LABEL_10;
      }

      v13 = [v5 announcer];
      v14 = [v13 homeKitUserID];
      v15 = [v6 hmu_userWithUniqueIdentifierUUIDString:v14];

      if (!v15)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v15 = [v6 hmu_userWithUniqueIdentifierUUIDString:v8];
      if (!v15)
      {
LABEL_5:
        LOBYTE(v16) = 0;
LABEL_10:

        goto LABEL_11;
      }
    }

    LOBYTE(v16) = [v6 hmu_isAdministrator:v15];
    goto LABEL_10;
  }

  LOBYTE(v16) = 0;
LABEL_11:

  return v16;
}

+ (void)_setIdentifiersForIDSService:(id)a3 inLocation:(id)a4 home:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ANHomeManager shared];
  v11 = [v10 currentAccessory];

  if (!v11)
  {
    if ([v8 flags])
    {
      [v8 setFlags:{objc_msgSend(v8, "flags") | 6}];
    }

    v12 = [v9 currentUser];
    v13 = [v12 uniqueIdentifier];
    v17[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v8 setUserUUIDs:v14];

    v15 = [v7 uniqueIdentifiersForDevicesExcludingAppleAccessories];
    [v8 setDeviceIDs:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)performBasicValidationForAnnouncement:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 location];
  v7 = [v6 homeUUID];

  if (!v7)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [v5 identifier];
    v9 = [v15 stringWithFormat:@"Announcement (%@) missing Home ID", v16];

    v14 = [MEMORY[0x277CCA9B8] an_errorWithCode:1030 component:*MEMORY[0x277CEA9B8] description:v9];
    goto LABEL_27;
  }

  v8 = +[ANHomeManager shared];
  v9 = [v8 homeForID:v7];

  if (!v9)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [v5 identifier];
    v11 = [v17 stringWithFormat:@"Local device is not part of home: (%@) in Announcement (%@)", v7, v18];

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CEA9B8];
    v21 = 1016;
    v22 = v11;
LABEL_24:
    v31 = [v19 an_errorWithCode:v21 component:v20 description:v22];
LABEL_25:
    v14 = v31;
    goto LABEL_26;
  }

  v10 = +[ANHomeManager shared];
  v11 = [v10 currentAccessory];

  v12 = [MEMORY[0x277CEAB88] isAnnounceAccessory];
  v13 = v12;
  if (v11 || (v12 & 1) != 0)
  {
    if (((v11 == 0) & v12) == 1)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CEA9B8];
      v22 = @"Current Accessory is nil, and device is HomePod this should not happen";
      v21 = 1048;
      goto LABEL_24;
    }

    if (([(__CFString *)v11 an_supportsAnnounce]& 1) == 0)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CEA9B8];
      v22 = @"Current Accessory does not support Announce";
      v21 = 1030;
      goto LABEL_24;
    }

    v23 = [v5 isRelayRequest];
    if (!a4 && (v23 & 1) == 0 && ([(__CFString *)v11 an_isAnnounceEnabled]& 1) == 0)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CEA9B8];
      v22 = @"Announce not enabled for Current Accessory";
      goto LABEL_22;
    }

    v14 = 0;
    if (!v11 || ((v13 ^ 1) & 1) != 0)
    {
      goto LABEL_26;
    }

    v24 = [MEMORY[0x277CEAB80] sharedInstance];
    v25 = [v24 BOOLForDefault:*MEMORY[0x277CEA810]];

    if (v25)
    {
      v26 = +[ANHomeManager shared];
      v27 = [v26 currentHome];

      if (v27)
      {
        v28 = [(__CFString *)v27 uniqueIdentifier];
        v29 = [v9 uniqueIdentifier];
        v30 = [v28 isEqual:v29];

        if (v30)
        {

LABEL_32:
          v31 = [ANMessenger validateAnnouncerInAnnouncement:v5 home:v9];
          goto LABEL_25;
        }

        v39 = MEMORY[0x277CCACA8];
        v40 = [v9 uniqueIdentifier];
        v41 = [(__CFString *)v27 uniqueIdentifier];
        v42 = [v39 stringWithFormat:@"Announcent Home ID (%@) does not match Current Home ID (%@)", v40, v41];

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
      if (([(__CFString *)v11 hmu_isPartOfHome:v9]& 1) != 0)
      {
        goto LABEL_32;
      }

      v33 = MEMORY[0x277CCACA8];
      v34 = [v9 uniqueIdentifier];
      v27 = [v33 stringWithFormat:@"Accessory is not in the Announcement's home (%@)", v34];

      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CEA9B8];
      v37 = 1016;
      v38 = v27;
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

+ (id)validateAnnouncerInAnnouncement:(id)a3 home:(id)a4
{
  v5 = a4;
  v6 = [a3 announcer];
  v7 = [v6 homeKitUserID];

  if (!v7)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v8 = [v5 hmu_userWithUniqueIdentifierUUIDString:v7];
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

  if (([v5 announceAccessAllowedForUser:v8] & 1) == 0)
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

+ (id)performIDSValidationForAnnouncement:(id)a3 withSenderContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ANHomeManager shared];
  v8 = [v7 currentAccessory];

  v9 = +[ANHomeManager shared];
  v10 = [v6 location];

  v11 = [v10 homeUUID];
  v12 = [v9 homeForID:v11];

  if (!v8 && ([v12 hmu_isRemoteAccessAllowedForCurrentUser] & 1) == 0)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CEA9B8];
    v22 = @"Remote Access Not Allowed for Current User";
    goto LABEL_14;
  }

  v13 = [v5 senderCorrelationIdentifier];

  if (!v13)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CEA9B8];
    v22 = @"No Sender Correlation ID";
LABEL_14:
    v30 = [v20 an_errorWithCode:1030 component:v21 description:v22];
    goto LABEL_20;
  }

  if (![v5 isValidDevice])
  {
    v23 = [v5 senderCorrelationIdentifier];
    v19 = [v12 hmu_userWithSenderCorrelationIdentifier:v23];

    if (v19)
    {
      goto LABEL_9;
    }

    v31 = @"No user with matching Sender Correlation ID";
LABEL_18:
    v30 = [MEMORY[0x277CCA9B8] an_errorWithCode:1030 component:*MEMORY[0x277CEA9B8] description:v31];
    goto LABEL_19;
  }

  v14 = [v12 currentUser];
  v15 = [v14 uniqueIdentifier];
  v16 = [v12 owner];
  v17 = [v16 uniqueIdentifier];
  v18 = [v15 isEqual:v17];

  if (!v18)
  {
    v19 = 0;
    v31 = @"Received message from a known device but current user is not owner.";
    goto LABEL_18;
  }

  v19 = [v12 owner];
LABEL_9:
  if (!v8)
  {
    v24 = [MEMORY[0x277CEAB80] sharedInstance];
    v25 = [v24 BOOLForDefault:*MEMORY[0x277CEA940]];

    if (v25)
    {
      v26 = [v19 uniqueIdentifier];
      v27 = [v12 owner];
      v28 = [v27 uniqueIdentifier];
      v29 = [v26 isEqual:v28];

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

+ (id)performPreflightChecksForSendingContent:(id)a3 toHome:(id)a4 rooms:(id)a5 zones:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 count] || objc_msgSend(v12, "count"))
  {
    v13 = [ANMessenger _performPreflightChecksForSendingToRooms:v11 zones:v12];
  }

  else
  {
    v13 = [ANMessenger _performPreflightChecksForSendingContent:v9 toHome:v10];
  }

  v14 = v13;

  return v14;
}

+ (id)_performPreflightChecksForSendingContent:(id)a3 toHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 appleAnnounceCapableAccessories];
  v9 = [v8 count];

  if (!v9)
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CEA9B8];
    v31 = 1033;
LABEL_19:
    v4 = [v29 an_errorWithCode:v31 component:v30];
    goto LABEL_24;
  }

  v10 = [v7 appleAnnounceAccessories];
  v11 = [v10 count];

  if (!v11)
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CEA9B8];
    v31 = 1035;
    goto LABEL_19;
  }

  v12 = +[ANHomeManager shared];
  v13 = [v12 currentAccessory];

  if (v13)
  {
    v14 = v13;
    v15 = [v7 usersIncludingCurrentUserWithAnnounceEnabled];
    v16 = MEMORY[0x277CD1650];
    v17 = [v7 accessories];
    v18 = [v16 announceAccessoriesWithAnnounceEnabledFromAccessories:v17];
    v19 = [v18 mutableCopy];

    v20 = [v14 room];
    v21 = v20;
    if (v20)
    {
      v22 = MEMORY[0x277CD1650];
      v23 = [v20 accessories];
      v24 = [v22 announceAccessoriesWithAnnounceEnabledFromAccessories:v23];

      [v19 removeObjectsInArray:v24];
    }

    v25 = [v6 homeKitUserIdentifier];
    if (v25)
    {
      v37 = v14;
      v26 = [v7 hmu_userWithUniqueIdentifier:v25];
      if (v26)
      {
        v27 = [v15 mutableCopy];
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

    if ([v15 count] || objc_msgSend(v19, "count"))
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
  v33 = [v7 accessories];
  v34 = [v32 announceAccessoriesWithAnnounceEnabledFromAccessories:v33];
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

+ (id)_performPreflightChecksForSendingToRooms:(id)a3 zones:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CD1D88] an_roomsWithAnnounceAccessoriesFromRooms:v5];
  if ([v7 count])
  {
  }

  else
  {
    v8 = [MEMORY[0x277CD1F50] an_zonesWithAnnounceAccessoriesFromZones:v6];
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
  v11 = [MEMORY[0x277CD1D88] hmu_accessoriesInRooms:v5];
  v12 = [v10 announceAccessoriesFromAccessories:v11];
  if ([v12 count])
  {
  }

  else
  {
    v13 = MEMORY[0x277CD1650];
    v14 = [MEMORY[0x277CD1F50] hmu_accessoriesInZones:v6];
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
  v18 = [MEMORY[0x277CD1D88] hmu_accessoriesInRooms:v5];
  v19 = [v17 announceAccessoriesWithAnnounceEnabledFromAccessories:v18];
  if ([v19 count])
  {

LABEL_10:
    v24 = 0;
    goto LABEL_15;
  }

  v20 = MEMORY[0x277CD1650];
  v21 = [MEMORY[0x277CD1F50] hmu_accessoriesInZones:v6];
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

+ (id)performPreflightChecksForSendingAnnouncementToHome:(id)a3 rooms:(id)a4 zones:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 appleAnnounceCapableAccessories];
  v12 = [v11 count];

  if (!v12)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CEA9B8];
    v21 = 1033;
LABEL_11:
    v22 = [v19 an_errorWithCode:v21 component:v20];
    goto LABEL_26;
  }

  v13 = [v8 appleAnnounceAccessories];
  v14 = [v13 count];

  if (!v14)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CEA9B8];
    v21 = 1035;
    goto LABEL_11;
  }

  v15 = +[ANHomeManager shared];
  v16 = [v15 currentAccessory];

  v17 = [MEMORY[0x277CEAB88] isAnnounceAccessory];
  if (v16 || (v17 & 1) != 0)
  {
    if (v16 || ((v17 ^ 1) & 1) != 0)
    {
      if (([v16 an_supportsAnnounce] & 1) == 0)
      {
        v23 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CEA9B8];
        v25 = @"Current Accessory does not support Announce";
        v26 = 1030;
        goto LABEL_23;
      }

      if (([v16 an_isAnnounceEnabled] & 1) == 0)
      {
        v23 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CEA9B8];
        v25 = @"Announce not enabled for Endpoint Accessory";
        goto LABEL_21;
      }

      if ([v9 count] != 1)
      {
        goto LABEL_6;
      }

      v27 = [v16 room];
      v28 = [v27 uniqueIdentifier];
      v29 = [v9 firstObject];
      v30 = [v29 uniqueIdentifier];
      v31 = [v28 isEqual:v30];

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

  if (([v8 announceAccessAllowedForCurrentUser] & 1) == 0)
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CEA9B8];
    v25 = @"Announce Access Not Allowed For Current User";
LABEL_21:
    v26 = 1017;
    goto LABEL_23;
  }

LABEL_6:
  if (![v9 count] && !objc_msgSend(v10, "count"))
  {
    v22 = 0;
    goto LABEL_25;
  }

  v18 = [a1 _performPreflightChecksForSendingToRooms:v9 zones:v10];
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