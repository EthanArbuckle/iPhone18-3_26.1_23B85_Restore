@interface AXSSInterDeviceCommunicator
- (AXSSInterDeviceActionReceiver)actionReceiver;
- (AXSSInterDeviceCommunicator)init;
- (AXSSInterDeviceConnectionListener)connectionListener;
- (AXSSInterDeviceHearingAidsMessagesObserver)hearingAidsMessagesObserver;
- (AXSSInterDeviceSearchObserver)searchObserver;
- (BOOL)_setUpSessionIfNecessary;
- (BOOL)canSearch;
- (BOOL)hasPeers;
- (NSArray)searchResults;
- (id)_messageForSwitchEvent:(id)event index:(unint64_t)index;
- (id)_stateDescription;
- (id)_stringForState:(int64_t)state;
- (void)_advertise;
- (void)_broadcastICloudMessage:(id)message;
- (void)_cancelAdvertising;
- (void)_handleHighlightMessage;
- (void)_handlePerformSysdiagnoseMessage;
- (void)_handleSelectionMessageWithPayload:(id)payload;
- (void)_handleSwitchEventMessageWithPayload:(id)payload fromPeer:(id)peer;
- (void)_handleTimeoutAsPotentialReceiver;
- (void)_removePeerFromAvailableDevices:(id)devices;
- (void)_sendDataToReceiver:(id)receiver;
- (void)_sendDummyPacket;
- (void)_sendICloudMessage:(id)message toDevice:(id)device;
- (void)_setUpSessionIfNecessary;
- (void)_tearDownAdvertiser;
- (void)_tearDownBrowser;
- (void)_tearDownConnectivity;
- (void)_tearDownSession;
- (void)advertiser:(id)advertiser didNotStartAdvertisingPeer:(id)peer;
- (void)advertiser:(id)advertiser didReceiveInvitationFromPeer:(id)peer withContext:(id)context invitationHandler:(id)handler;
- (void)browser:(id)browser didNotStartBrowsingForPeers:(id)peers;
- (void)browser:(id)browser foundPeer:(id)peer withDiscoveryInfo:(id)info;
- (void)browser:(id)browser lostPeer:(id)peer;
- (void)dealloc;
- (void)forwardSwitchEvent:(id)event;
- (void)highlightSearchResult:(id)result;
- (void)performSysdiagnoseOnReceiver;
- (void)search;
- (void)searchResults;
- (void)selectSearchResult:(id)result settings:(id)settings;
- (void)sendHearingAidsMessage:(id)message toDevice:(id)device;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)session:(id)session didFinishReceivingResourceWithName:(id)name fromPeer:(id)peer atURL:(id)l withError:(id)error;
- (void)session:(id)session didReceiveCertificate:(id)certificate fromPeer:(id)peer certificateHandler:(id)handler;
- (void)session:(id)session didReceiveData:(id)data fromPeer:(id)peer;
- (void)session:(id)session didReceiveStream:(id)stream withName:(id)name fromPeer:(id)peer;
- (void)session:(id)session didStartReceivingResourceWithName:(id)name fromPeer:(id)peer withProgress:(id)progress;
- (void)session:(id)session peer:(id)peer didChangeState:(int64_t)state;
- (void)setState:(int64_t)state;
- (void)stop;
@end

@implementation AXSSInterDeviceCommunicator

- (AXSSInterDeviceCommunicator)init
{
  v21.receiver = self;
  v21.super_class = AXSSInterDeviceCommunicator;
  v2 = [(AXSSInterDeviceCommunicator *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    availableDevices = v2->_availableDevices;
    v2->_availableDevices = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deviceTypesByPeerID = v2->_deviceTypesByPeerID;
    v2->_deviceTypesByPeerID = v5;

    v7 = MGCopyAnswer();
    if ([v7 length])
    {
      v8 = [v7 axss_stringByTrimmingToLength:63 encoding:4];
    }

    else
    {
      v8 = 0;
    }

    if (![v8 length])
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
      v10 = [v9 localizedStringForKey:@"UNTITLED_DEVICE" value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];

      v8 = v10;
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v11 = getMCPeerIDClass_softClass;
    v30 = getMCPeerIDClass_softClass;
    if (!getMCPeerIDClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __getMCPeerIDClass_block_invoke;
      v25 = &unk_1E8134F10;
      v26 = &v27;
      __getMCPeerIDClass_block_invoke(buf);
      v11 = v28[3];
    }

    v12 = v11;
    _Block_object_dispose(&v27, 8);
    v13 = [[v11 alloc] initWithDisplayName:v8];
    localPeerID = v2->_localPeerID;
    v2->_localPeerID = v13;

    v15 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.accessibility.switchcontrol"];
    service = v2->_service;
    v2->_service = v15;

    [(IDSService *)v2->_service addDelegate:v2 queue:MEMORY[0x1E69E96A0]];
    v17 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C0E8A000, v17, OS_LOG_TYPE_DEFAULT, "Initialized IDSService.", buf, 2u);
    }

    v18 = objc_alloc_init(AXSSInterDeviceSecurityHelper);
    securityHelper = v2->_securityHelper;
    v2->_securityHelper = v18;
  }

  return v2;
}

- (void)dealloc
{
  [(AXSSInterDeviceCommunicator *)self _tearDownConnectivity];
  [(IDSService *)self->_service removeDelegate:self];
  [(NSTimer *)self->_dummyPacketTimer invalidate];
  v3.receiver = self;
  v3.super_class = AXSSInterDeviceCommunicator;
  [(AXSSInterDeviceCommunicator *)&v3 dealloc];
}

- (id)_stateDescription
{
  state = [(AXSSInterDeviceCommunicator *)self state];

  return [(AXSSInterDeviceCommunicator *)self _stringForState:state];
}

- (id)_stringForState:(int64_t)state
{
  if (state > 6)
  {
    return 0;
  }

  else
  {
    return off_1E8135D68[state];
  }
}

- (void)setState:(int64_t)state
{
  v90 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v5 setState:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(AXSSInterDeviceCommunicator *)self _stringForState:self->_state];
    v15 = [(AXSSInterDeviceCommunicator *)self _stringForState:state];
    v86 = 138412546;
    v87 = v14;
    v88 = 2112;
    v89 = v15;
    _os_log_impl(&dword_1C0E8A000, v13, OS_LOG_TYPE_DEFAULT, "IDC State: %@ => %@", &v86, 0x16u);
  }

  state = self->_state;
  if (state == state)
  {
    goto LABEL_36;
  }

  self->_state = state;
  if (state != 3 || state != 2)
  {
    if (state == 3 && state == 6)
    {
      v38 = AXSSLogForCategory(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [(AXSSInterDeviceCommunicator *)v38 setState:v39, v40, v41, v42, v43, v44, v45];
      }

      goto LABEL_23;
    }

    if (state == 3 && state == 4)
    {
      v48 = AXSSLogForCategory(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [(AXSSInterDeviceCommunicator *)v48 setState:v49, v50, v51, v52, v53, v54, v55];
      }
    }

    else
    {
      if (state != 3 || state != 5)
      {
        if (state == 2)
        {
          receiver = [(AXSSInterDeviceCommunicator *)self receiver];

          if (!receiver)
          {
            v65 = AXSSLogForCategory(0);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              [(AXSSInterDeviceCommunicator *)v65 setState:v66, v67, v68, v69, v70, v71, v72];
            }
          }

          [(AXSSInterDeviceCommunicator *)self setSwitchEventIndex:0];
          connectionListener = [(AXSSInterDeviceCommunicator *)self connectionListener];
          receiver2 = [(AXSSInterDeviceCommunicator *)self receiver];
          displayName = [receiver2 displayName];
          [connectionListener didConnectAsForwarderToDeviceWithName:displayName];

          dummyPacketTimer = [(AXSSInterDeviceCommunicator *)self dummyPacketTimer];

          if (dummyPacketTimer)
          {
            v77 = AXSSLogForCategory(0);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              [(AXSSInterDeviceCommunicator *)v77 setState:v78, v79, v80, v81, v82, v83, v84];
            }
          }

          [(AXSSInterDeviceCommunicator *)self setNumberOfBurstPacketsRemaining:10];
          v85 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__sendDummyPacket selector:0 userInfo:1 repeats:0.00545454545];
          [(AXSSInterDeviceCommunicator *)self setDummyPacketTimer:v85];

          dummyPacketTimer2 = [(AXSSInterDeviceCommunicator *)self dummyPacketTimer];
          [dummyPacketTimer2 setTolerance:0.000545454545];
          goto LABEL_26;
        }

        if (state == 2)
        {
          goto LABEL_13;
        }

        if (state != 6)
        {
          goto LABEL_24;
        }

LABEL_23:
        connectionListener2 = [(AXSSInterDeviceCommunicator *)self connectionListener];
        [connectionListener2 didDisconnectAsReceiver];

        goto LABEL_24;
      }

      v48 = AXSSLogForCategory(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [(AXSSInterDeviceCommunicator *)v48 setState:v56, v57, v58, v59, v60, v61, v62];
      }
    }

    [(AXSSInterDeviceCommunicator *)self setReceiver:0];
    goto LABEL_36;
  }

  v17 = AXSSLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(AXSSInterDeviceCommunicator *)v17 setState:v18, v19, v20, v21, v22, v23, v24];
  }

LABEL_13:
  receiver3 = [(AXSSInterDeviceCommunicator *)self receiver];

  if (!receiver3)
  {
    v26 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v26 setState:v27, v28, v29, v30, v31, v32, v33];
    }
  }

  connectionListener3 = [(AXSSInterDeviceCommunicator *)self connectionListener];
  receiver4 = [(AXSSInterDeviceCommunicator *)self receiver];
  displayName2 = [receiver4 displayName];
  [connectionListener3 didDisconnectAsForwarderFromDeviceWithName:displayName2];

  dummyPacketTimer3 = [(AXSSInterDeviceCommunicator *)self dummyPacketTimer];
  [dummyPacketTimer3 invalidate];

  [(AXSSInterDeviceCommunicator *)self setDummyPacketTimer:0];
LABEL_24:
  [(AXSSInterDeviceCommunicator *)self setReceiver:0];
  if (!state)
  {
    [(AXSSInterDeviceCommunicator *)self _tearDownConnectivity];
    dummyPacketTimer2 = [(AXSSInterDeviceCommunicator *)self connectionListener];
    [dummyPacketTimer2 didBecomeIdle];
LABEL_26:
  }

LABEL_36:
  v63 = *MEMORY[0x1E69E9840];
}

- (void)_tearDownAdvertiser
{
  advertiser = [(AXSSInterDeviceCommunicator *)self advertiser];

  if (advertiser)
  {
    advertiser2 = [(AXSSInterDeviceCommunicator *)self advertiser];
    [advertiser2 stopAdvertisingPeer];

    advertiser3 = [(AXSSInterDeviceCommunicator *)self advertiser];
    [advertiser3 setDelegate:0];

    [(AXSSInterDeviceCommunicator *)self setAdvertiser:0];
  }
}

- (void)_tearDownSession
{
  session = [(AXSSInterDeviceCommunicator *)self session];

  if (session)
  {
    session2 = [(AXSSInterDeviceCommunicator *)self session];
    [session2 disconnect];

    session3 = [(AXSSInterDeviceCommunicator *)self session];
    [session3 setDelegate:0];

    [(AXSSInterDeviceCommunicator *)self setSession:0];
  }
}

- (void)_tearDownBrowser
{
  browser = [(AXSSInterDeviceCommunicator *)self browser];

  if (browser)
  {
    browser2 = [(AXSSInterDeviceCommunicator *)self browser];
    [browser2 stopBrowsingForPeers];

    browser3 = [(AXSSInterDeviceCommunicator *)self browser];
    [browser3 setDelegate:0];

    [(AXSSInterDeviceCommunicator *)self setBrowser:0];
  }
}

- (void)_tearDownConnectivity
{
  [(AXSSInterDeviceCommunicator *)self _tearDownBrowser];
  [(AXSSInterDeviceCommunicator *)self _tearDownSession];
  [(AXSSInterDeviceCommunicator *)self _tearDownAdvertiser];
  [(NSMutableArray *)self->_availableDevices removeAllObjects];
  [(NSMutableDictionary *)self->_deviceTypesByPeerID removeAllObjects];
  [(AXSSInterDeviceCommunicator *)self setReceiver:0];

  [(AXSSInterDeviceCommunicator *)self setForwarder:0];
}

- (void)_broadcastICloudMessage:(id)message
{
  v31 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  devices = [(IDSService *)self->_service devices];
  v6 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = devices;
    _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_DEFAULT, "Devices: %@", buf, 0xCu);
  }

  if ([devices count])
  {
    v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(devices, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = devices;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          v14 = IDSCopyIDForDevice();
          if (v14)
          {
            [v7 addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    service = self->_service;
    v22 = 0;
    v23 = 0;
    v16 = [(IDSService *)service sendMessage:messageCopy toDestinations:v7 priority:300 options:0 identifier:&v23 error:&v22];
    v17 = v23;
    v18 = v22;
    v19 = AXSSLogForCategory(1);
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v17;
        _os_log_impl(&dword_1C0E8A000, v20, OS_LOG_TYPE_DEFAULT, "Message sent to other devices with identifier %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceCommunicator _broadcastICloudMessage:];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_sendICloudMessage:(id)message toDevice:(id)device
{
  v25 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  deviceCopy = device;
  if (deviceCopy)
  {
    devices = [(IDSService *)self->_service devices];
    v9 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = messageCopy;
      v23 = 2112;
      v24 = deviceCopy;
      _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_DEFAULT, "Sending message %@ to device: %@", buf, 0x16u);
    }

    if ([devices count] && objc_msgSend(devices, "containsObject:", deviceCopy))
    {
      v10 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
      v11 = IDSCopyIDForDevice();
      if (v11)
      {
        [v10 addObject:v11];
      }

      service = self->_service;
      v19 = 0;
      v20 = 0;
      v13 = [(IDSService *)service sendMessage:messageCopy toDestinations:v10 priority:300 options:0 identifier:&v20 error:&v19];
      v14 = v20;
      v15 = v19;
      v16 = AXSSLogForCategory(1);
      v17 = v16;
      if (v13)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v14;
          _os_log_impl(&dword_1C0E8A000, v17, OS_LOG_TYPE_DEFAULT, "Message sent with identifier %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator _broadcastICloudMessage:];
      }
    }
  }

  else
  {
    [(AXSSInterDeviceCommunicator *)self _broadcastICloudMessage:messageCopy];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setUpSessionIfNecessary
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v3 setState:v4, v5, v6, v7, v8, v9, v10];
    }
  }

  if (self->_session)
  {
    return 1;
  }

  securityHelper = [(AXSSInterDeviceCommunicator *)self securityHelper];
  securityIdentity = [securityHelper securityIdentity];

  if ([(AXSSInterDeviceCommunicator *)self state]!= 1 || securityIdentity)
  {
    if (securityIdentity)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2050000000;
      v22 = getMCSessionClass_softClass;
      v33 = getMCSessionClass_softClass;
      if (!getMCSessionClass_softClass)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __getMCSessionClass_block_invoke;
        v29[3] = &unk_1E8134F10;
        v29[4] = &v30;
        __getMCSessionClass_block_invoke(v29);
        v22 = v31[3];
      }

      v23 = v22;
      _Block_object_dispose(&v30, 8);
      v24 = [v22 alloc];
      localPeerID = [(AXSSInterDeviceCommunicator *)self localPeerID];
      v26 = [v24 initWithPeer:localPeerID securityIdentity:securityIdentity encryptionPreference:1];
      session = self->_session;
      self->_session = v26;

      [(MCSession *)self->_session setAWDLDisabled:1];
      [(MCSession *)self->_session setHeartbeatTimeout:4];
      [(MCSession *)self->_session setDelegate:self];
      goto LABEL_19;
    }
  }

  else
  {
    v14 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v14 _setUpSessionIfNecessary:v15];
    }
  }

  v28 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [AXSSInterDeviceCommunicator _setUpSessionIfNecessary];
  }

LABEL_19:
  return self->_session != 0;
}

- (BOOL)canSearch
{
  if ([(AXSSInterDeviceCommunicator *)self state])
  {
    return 0;
  }

  devices = [(IDSService *)self->_service devices];
  v4 = [devices count];

  if (v4)
  {
    securityIdentity = [(AXSSInterDeviceSecurityHelper *)self->_securityHelper securityIdentity];

    if (securityIdentity)
    {
      return 1;
    }

    v7 = AXSSLogForCategory(1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v8 = "Can't search because our security identity isn't ready yet.";
    v9 = buf;
    goto LABEL_9;
  }

  v7 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v8 = "Can't search because no other iCloud devices are available.";
    v9 = &v10;
LABEL_9:
    _os_log_impl(&dword_1C0E8A000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
  }

LABEL_10:

  return 0;
}

- (void)search
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, self, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_cancelAdvertising
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleTimeoutAsPotentialReceiver
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_advertise
{
  v38 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v3 setState:v4, v5, v6, v7, v8, v9, v10];
    }
  }

  [(AXSSInterDeviceCommunicator *)self setState:3];
  if (!self->_advertiser)
  {
    v11 = MGGetSInt32Answer();
    v12 = @"phone";
    if (v11 == 3)
    {
      v12 = @"pad";
    }

    v13 = v12;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v14 = getMCNearbyServiceAdvertiserClass_softClass;
    v31 = getMCNearbyServiceAdvertiserClass_softClass;
    if (!getMCNearbyServiceAdvertiserClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v35 = __getMCNearbyServiceAdvertiserClass_block_invoke;
      v36 = &unk_1E8134F10;
      v37 = &v28;
      __getMCNearbyServiceAdvertiserClass_block_invoke(&buf);
      v14 = v29[3];
    }

    v15 = v14;
    _Block_object_dispose(&v28, 8);
    v16 = [v14 alloc];
    localPeerID = [(AXSSInterDeviceCommunicator *)self localPeerID];
    v32[0] = @"AXSSIDCVersion";
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", 1];
    v32[1] = @"AXSSIDCDeviceType";
    v33[0] = v18;
    v33[1] = v13;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v20 = [v16 initWithPeer:localPeerID discoveryInfo:v19 serviceType:@"switchcontrol"];
    advertiser = self->_advertiser;
    self->_advertiser = v20;

    advertiser = [(AXSSInterDeviceCommunicator *)self advertiser];
    [advertiser setAWDLDisabled:1];

    advertiser2 = [(AXSSInterDeviceCommunicator *)self advertiser];
    [advertiser2 setDelegate:self];

    advertiser3 = [(AXSSInterDeviceCommunicator *)self advertiser];
    [advertiser3 startAdvertisingPeer];

    v25 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      advertiser4 = [(AXSSInterDeviceCommunicator *)self advertiser];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = advertiser4;
      _os_log_impl(&dword_1C0E8A000, v25, OS_LOG_TYPE_DEFAULT, "Created advertiser: %@", &buf, 0xCu);
    }
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__cancelAdvertising object:0];
  [(AXSSInterDeviceCommunicator *)self performSelector:sel__cancelAdvertising withObject:0 afterDelay:30.0];
  v27 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v3 setState:v4, v5, v6, v7, v8, v9, v10];
    }
  }

  [(AXSSInterDeviceCommunicator *)self setState:0];
}

- (NSArray)searchResults
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v3 setState:v4, v5, v6, v7, v8, v9, v10];
    }
  }

  if ([(AXSSInterDeviceCommunicator *)self state]!= 1)
  {
    v11 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v11 searchResults:v12];
    }
  }

  availableDevices = [(AXSSInterDeviceCommunicator *)self availableDevices];
  v20 = [availableDevices copy];

  return v20;
}

- (void)highlightSearchResult:(id)result
{
  v28[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([(AXSSInterDeviceCommunicator *)self state]!= 1)
  {
    v5 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v5 searchResults:v6];
    }
  }

  v13 = MEMORY[0x1E696AE40];
  v27 = @"MessageType";
  v28[0] = @"HighlightAsPotentialSlave";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v25 = 0;
  v15 = [v13 dataWithPropertyList:v14 format:200 options:0 error:&v25];
  v16 = v25;

  if (!v15)
  {
    v22 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceCommunicator highlightSearchResult:];
    }

    goto LABEL_12;
  }

  session = [(AXSSInterDeviceCommunicator *)self session];
  peerID = [resultCopy peerID];
  v26 = peerID;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v24 = v16;
  v20 = [session sendData:v15 toPeers:v19 withMode:0 error:&v24];
  v21 = v24;

  if ((v20 & 1) == 0)
  {
    v22 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceCommunicator highlightSearchResult:];
    }

    v16 = v21;
LABEL_12:

    v21 = v16;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)selectSearchResult:(id)result settings:(id)settings
{
  v66 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  settingsCopy = settings;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v8 setState:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    peerID = [resultCopy peerID];
    *buf = 138412546;
    v63 = peerID;
    v64 = 2112;
    v65 = settingsCopy;
    _os_log_impl(&dword_1C0E8A000, v16, OS_LOG_TYPE_DEFAULT, "Selecting %@ with %@", buf, 0x16u);
  }

  peerID2 = [resultCopy peerID];
  [(AXSSInterDeviceCommunicator *)self setReceiver:peerID2];

  [(AXSSInterDeviceCommunicator *)self setState:2];
  v19 = MEMORY[0x1E696AE40];
  v20 = [(AXSSInterDeviceCommunicator *)self _messageForSelection:1 settings:settingsCopy];
  v59 = 0;
  v21 = [v19 dataWithPropertyList:v20 format:200 options:0 error:&v59];
  v22 = v59;

  if (v21)
  {
    v51 = resultCopy;
    session = [(AXSSInterDeviceCommunicator *)self session];
    receiver = [(AXSSInterDeviceCommunicator *)self receiver];
    v61 = receiver;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
    v58 = v22;
    v26 = [session sendData:v21 toPeers:v25 withMode:0 error:&v58];
    v27 = v58;

    if ((v26 & 1) == 0)
    {
      v47 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator selectSearchResult:settings:];
      }

      [(AXSSInterDeviceCommunicator *)self stop];
      v22 = v27;
      goto LABEL_36;
    }

    v49 = v27;
    v50 = settingsCopy;
    array = [MEMORY[0x1E695DF70] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    availableDevices = [(AXSSInterDeviceCommunicator *)self availableDevices];
    v30 = [availableDevices countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v55;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v55 != v32)
          {
            objc_enumerationMutation(availableDevices);
          }

          v34 = *(*(&v54 + 1) + 8 * i);
          peerID3 = [v34 peerID];
          receiver2 = [(AXSSInterDeviceCommunicator *)self receiver];

          if (peerID3 != receiver2)
          {
            peerID4 = [v34 peerID];
            [array addObject:peerID4];
          }
        }

        v31 = [availableDevices countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v31);
    }

    if (![array count])
    {
      v44 = v49;
      settingsCopy = v50;
LABEL_35:

      v22 = v44;
LABEL_36:
      resultCopy = v51;
      goto LABEL_37;
    }

    v38 = MEMORY[0x1E696AE40];
    v39 = [(AXSSInterDeviceCommunicator *)self _messageForSelection:0 settings:0];
    v53 = 0;
    v40 = [v38 dataWithPropertyList:v39 format:200 options:0 error:&v53];
    v41 = v53;

    settingsCopy = v50;
    if (v40)
    {
      session2 = [(AXSSInterDeviceCommunicator *)self session];
      v52 = v41;
      v43 = [session2 sendData:v40 toPeers:array withMode:0 error:&v52];
      v44 = v52;

      if (v43)
      {
LABEL_34:

        goto LABEL_35;
      }

      v45 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator selectSearchResult:settings:];
      }

      v41 = v44;
    }

    else
    {
      v45 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator selectSearchResult:settings:];
      }
    }

    v44 = v41;
    goto LABEL_34;
  }

  v46 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [AXSSInterDeviceCommunicator selectSearchResult:settings:];
  }

LABEL_37:
  [(AXSSInterDeviceCommunicator *)self _tearDownBrowser];

  v48 = *MEMORY[0x1E69E9840];
}

- (id)_messageForSwitchEvent:(id)event index:(unint64_t)index
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"MessageType";
  v15[1] = @"MessagePayload";
  v16[0] = @"SwitchEvent";
  v13[0] = @"Index";
  v5 = MEMORY[0x1E696AD98];
  eventCopy = event;
  v7 = [v5 numberWithUnsignedLongLong:index];
  v13[1] = @"DictionaryRepresentation";
  v14[0] = v7;
  dictionaryRepresentation = [eventCopy dictionaryRepresentation];

  v14[1] = dictionaryRepresentation;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_sendDataToReceiver:(id)receiver
{
  v24[1] = *MEMORY[0x1E69E9840];
  receiverCopy = receiver;
  session = [(AXSSInterDeviceCommunicator *)self session];
  receiver = [(AXSSInterDeviceCommunicator *)self receiver];
  v24[0] = receiver;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v18[0] = 0;
  v8 = [session sendData:receiverCopy toPeers:v7 withMode:1 error:v18];
  v9 = v18[0];

  if ((v8 & 1) == 0)
  {
    v10 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceCommunicator _sendDataToReceiver:];
    }

    domain = [v9 domain];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v12 = getMCErrorDomainSymbolLoc_ptr;
    v23 = getMCErrorDomainSymbolLoc_ptr;
    if (!getMCErrorDomainSymbolLoc_ptr)
    {
      v18[1] = MEMORY[0x1E69E9820];
      v18[2] = 3221225472;
      v18[3] = __getMCErrorDomainSymbolLoc_block_invoke;
      v18[4] = &unk_1E8134F10;
      v19 = &v20;
      v13 = MultipeerConnectivityLibrary();
      v14 = dlsym(v13, "MCErrorDomain");
      *(v19[1] + 24) = v14;
      getMCErrorDomainSymbolLoc_ptr = *(v19[1] + 24);
      v12 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v12)
    {
      +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
      __break(1u);
    }

    if (domain == *v12)
    {
      v15 = [v9 code] == 1;

      if (v15)
      {
        v16 = AXSSLogForCategory(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [AXSSInterDeviceCommunicator _sendDataToReceiver:];
        }

        [(AXSSInterDeviceCommunicator *)self setState:0];
      }
    }

    else
    {
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)forwardSwitchEvent:(id)event
{
  v37 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v5 setState:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  receiver = [(AXSSInterDeviceCommunicator *)self receiver];

  if (!receiver)
  {
    v14 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v14 setState:v15, v16, v17, v18, v19, v20, v21];
    }
  }

  receiver2 = [(AXSSInterDeviceCommunicator *)self receiver];

  if (receiver2)
  {
    [(AXSSInterDeviceCommunicator *)self setSwitchEventIndex:[(AXSSInterDeviceCommunicator *)self switchEventIndex]+ 1];
    v23 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      switchEventIndex = [(AXSSInterDeviceCommunicator *)self switchEventIndex];
      v33 = 2048;
      Current = CFAbsoluteTimeGetCurrent();
      v35 = 2112;
      v36 = eventCopy;
      _os_log_impl(&dword_1C0E8A000, v23, OS_LOG_TYPE_INFO, "Forwarding switch event %llu at time %f: %@", buf, 0x20u);
    }

    v24 = MEMORY[0x1E696AE40];
    v25 = [(AXSSInterDeviceCommunicator *)self _messageForSwitchEvent:eventCopy index:[(AXSSInterDeviceCommunicator *)self switchEventIndex]];
    v30 = 0;
    v26 = [v24 dataWithPropertyList:v25 format:200 options:0 error:&v30];
    v27 = v30;

    if (v26)
    {
      [(AXSSInterDeviceCommunicator *)self _sendDataToReceiver:v26];
    }

    else
    {
      v28 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator forwardSwitchEvent:];
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)performSysdiagnoseOnReceiver
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error serializing message to perform sysdiagnose on receiver: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_sendDummyPacket
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error serializing dummy packet: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  messageCopy = message;
  dCopy = d;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v13 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v13 setState:v14, v15, v16, v17, v18, v19, v20];
    }
  }

  v21 = [messageCopy objectForKey:@"com.apple.hearing.hearingaids"];

  if (!v21)
  {
    v27 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      _stateDescription = [(AXSSInterDeviceCommunicator *)self _stateDescription];
      v39 = 138412546;
      v40 = messageCopy;
      v41 = 2112;
      v42 = _stateDescription;
      _os_log_impl(&dword_1C0E8A000, v27, OS_LOG_TYPE_DEFAULT, "Did receive message: %@. State: %@", &v39, 0x16u);
    }

    connectionListener = [(AXSSInterDeviceCommunicator *)self connectionListener];
    canAdvertise = [connectionListener canAdvertise];

    if (canAdvertise)
    {
      v31 = [serviceCopy deviceForFromID:dCopy];

      if (!v31)
      {
        v34 = AXSSLogForCategory(1);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v39 = 138412290;
        v40 = dCopy;
        v35 = "Received message, but it was not from our account. FromID: %@";
        v36 = v34;
        v37 = 12;
LABEL_26:
        _os_log_impl(&dword_1C0E8A000, v36, OS_LOG_TYPE_DEFAULT, v35, &v39, v37);
        goto LABEL_27;
      }

      if (![(AXSSInterDeviceCommunicator *)self state]|| [(AXSSInterDeviceCommunicator *)self state]== 3)
      {
        v32 = [messageCopy objectForKeyedSubscript:@"AXSSIDCVersion"];
        integerValue = [v32 integerValue];

        if (integerValue == 1)
        {
          [(AXSSInterDeviceCommunicator *)self _advertise];
          goto LABEL_28;
        }

        v34 = AXSSLogForCategory(1);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 134218240;
          v40 = integerValue;
          v41 = 2048;
          v42 = 1;
          v35 = "Compatibility version %ld did not match our compatibility version %ld";
          v36 = v34;
          v37 = 22;
          goto LABEL_26;
        }

LABEL_27:

        goto LABEL_28;
      }

      v34 = AXSSLogForCategory(1);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      LOWORD(v39) = 0;
      v35 = "Didn't advertise because we were in the middle of some other operation";
    }

    else
    {
      v34 = AXSSLogForCategory(1);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      LOWORD(v39) = 0;
      v35 = "Could not advertise because the inter device menu item was not enabled.";
    }

    v36 = v34;
    v37 = 2;
    goto LABEL_26;
  }

  v22 = [(IDSService *)self->_service deviceForFromID:dCopy];
  v23 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138412546;
    v40 = messageCopy;
    v41 = 2112;
    v42 = v22;
    _os_log_impl(&dword_1C0E8A000, v23, OS_LOG_TYPE_DEFAULT, "Did receive Hearing Aids message: %@ from device: %@", &v39, 0x16u);
  }

  hearingAidsMessagesObserver = [(AXSSInterDeviceCommunicator *)self hearingAidsMessagesObserver];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    hearingAidsMessagesObserver2 = [(AXSSInterDeviceCommunicator *)self hearingAidsMessagesObserver];
    [hearingAidsMessagesObserver2 didReceiveHearingAidsMessage:messageCopy fromDevice:v22];
  }

LABEL_28:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v13 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v6 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = changedCopy;
    _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_DEFAULT, "Devices changed: %@", &v11, 0xCu);
  }

  hearingAidsMessagesObserver = [(AXSSInterDeviceCommunicator *)self hearingAidsMessagesObserver];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    hearingAidsMessagesObserver2 = [(AXSSInterDeviceCommunicator *)self hearingAidsMessagesObserver];
    [hearingAidsMessagesObserver2 didUpdateDevices:changedCopy];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  v11 = AXSSLogForCategory(1);
  v12 = v11;
  if (successCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&dword_1C0E8A000, v12, OS_LOG_TYPE_DEFAULT, "Successfully sent message with identifier %@.", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [AXSSInterDeviceCommunicator service:account:identifier:didSendWithSuccess:error:];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleSwitchEventMessageWithPayload:(id)payload fromPeer:(id)peer
{
  v24 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  peerCopy = peer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [payloadCopy objectForKeyedSubscript:@"Index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedLongLongValue = [v8 unsignedLongLongValue];
    }

    else
    {
      v10 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator _handleSwitchEventMessageWithPayload:fromPeer:];
      }

      unsignedLongLongValue = 0;
    }

    v11 = [payloadCopy objectForKeyedSubscript:@"DictionaryRepresentation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[AXSSInterDeviceSwitchEvent alloc] initWithDictionaryRepresentation:v11];
      state = [(AXSSInterDeviceCommunicator *)self state];
      v14 = AXSSLogForCategory(1);
      actionReceiver = v14;
      if (state == 6)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v18 = 134218498;
          v19 = unsignedLongLongValue;
          v20 = 2048;
          Current = CFAbsoluteTimeGetCurrent();
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&dword_1C0E8A000, actionReceiver, OS_LOG_TYPE_INFO, "Handling switch event %llu at time %f: %@", &v18, 0x20u);
        }

        actionReceiver = [(AXSSInterDeviceCommunicator *)self actionReceiver];
        displayName = [peerCopy displayName];
        [actionReceiver didReceiveSwitchEvent:v12 forDeviceWithName:displayName];
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator _handleSwitchEventMessageWithPayload:? fromPeer:?];
      }
    }

    else
    {
      v12 = AXSSLogForCategory(1);
      if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator _handleSwitchEventMessageWithPayload:fromPeer:];
      }
    }
  }

  else
  {
    v8 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceCommunicator _handleSwitchEventMessageWithPayload:fromPeer:];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handleSelectionMessageWithPayload:(id)payload
{
  v14 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if ([(AXSSInterDeviceCommunicator *)self state]== 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [payloadCopy objectForKeyedSubscript:@"IsSelected"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v5 BOOLValue])
        {
          [(AXSSInterDeviceCommunicator *)self setState:6];
          v6 = [payloadCopy objectForKeyedSubscript:@"Settings"];
          if (v6)
          {
            v7 = [[AXSSSwitchControlSettings alloc] initWithDictionaryRepresentation:v6];
          }

          else
          {
            v7 = 0;
          }

          v9 = AXSSLogForCategory(1);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v12 = 138412290;
            v13 = v7;
            _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_DEFAULT, "Connected as receiver with settings %@", &v12, 0xCu);
          }

          connectionListener = [(AXSSInterDeviceCommunicator *)self connectionListener];
          [connectionListener didConnectAsReceiverWithSettings:v7];
        }

        else
        {
          [(AXSSInterDeviceCommunicator *)self setState:0];
        }
      }

      else
      {
        v8 = AXSSLogForCategory(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [AXSSInterDeviceCommunicator _handleSelectionMessageWithPayload:];
        }
      }
    }

    else
    {
      v5 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator _handleSelectionMessageWithPayload:];
      }
    }
  }

  else
  {
    v5 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceCommunicator _handleSelectionMessageWithPayload:?];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleHighlightMessage
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handlePerformSysdiagnoseMessage
{
  v8 = *MEMORY[0x1E69E9840];
  _stateDescription = [self _stateDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_removePeerFromAvailableDevices:(id)devices
{
  v24 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = AXSSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AXSSInterDeviceCommunicator *)v5 setState:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  availableDevices = [(AXSSInterDeviceCommunicator *)self availableDevices];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__AXSSInterDeviceCommunicator__removePeerFromAvailableDevices___block_invoke;
  v20[3] = &unk_1E8135C90;
  v14 = devicesCopy;
  v21 = v14;
  v15 = [availableDevices indexOfObjectPassingTest:v20];

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&dword_1C0E8A000, v16, OS_LOG_TYPE_DEFAULT, "Removed from available results: %@", buf, 0xCu);
    }

    availableDevices2 = [(AXSSInterDeviceCommunicator *)self availableDevices];
    [availableDevices2 removeObjectAtIndex:v15];

    searchObserver = [(AXSSInterDeviceCommunicator *)self searchObserver];
    [searchObserver didUpdateSearchResults];
  }

  v19 = *MEMORY[0x1E69E9840];
}

BOOL __63__AXSSInterDeviceCommunicator__removePeerFromAvailableDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 peerID];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)session:(id)session didReceiveData:(id)data fromPeer:(id)peer
{
  v32 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v25 = 0;
  v8 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:&v25];
  v9 = v25;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v10 objectForKeyedSubscript:@"MessageType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      v13 = [v10 objectForKeyedSubscript:@"MessagePayload"];
      if ([v12 isEqualToString:@"DummyPacket"])
      {
        v14 = AXSSLogForCategory(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [AXSSInterDeviceCommunicator session:didReceiveData:fromPeer:];
        }
      }

      else
      {
        v16 = [v12 isEqualToString:@"BurstDummyPacket"];
        v17 = AXSSLogForCategory(1);
        v14 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [AXSSInterDeviceCommunicator session:didReceiveData:fromPeer:];
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v27 = v10;
          v28 = 2112;
          v29 = peerCopy;
          _os_log_impl(&dword_1C0E8A000, v14, OS_LOG_TYPE_INFO, "Received message %@ from peer %@", buf, 0x16u);
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__AXSSInterDeviceCommunicator_session_didReceiveData_fromPeer___block_invoke;
      block[3] = &unk_1E8135CB8;
      v21 = v12;
      selfCopy = self;
      v23 = v13;
      v24 = peerCopy;
      v18 = v13;
      v15 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v15 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AXSSInterDeviceCommunicator session:didReceiveData:fromPeer:];
      }
    }
  }

  else
  {
    v10 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v27 = peerCopy;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      _os_log_error_impl(&dword_1C0E8A000, v10, OS_LOG_TYPE_ERROR, "Unexpected format for data from peer %@. Unarchived: %@. Error: %@", buf, 0x20u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __63__AXSSInterDeviceCommunicator_session_didReceiveData_fromPeer___block_invoke(void *a1)
{
  v2 = (a1 + 4);
  if ([a1[4] isEqualToString:@"SwitchEvent"])
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v3 _handleSwitchEventMessageWithPayload:v4 fromPeer:v5];
  }

  else if ([*v2 isEqualToString:@"Selection"])
  {
    v6 = a1[5];
    v7 = a1[6];

    [v6 _handleSelectionMessageWithPayload:v7];
  }

  else if ([*v2 isEqualToString:@"HighlightAsPotentialSlave"])
  {
    v8 = a1[5];

    [v8 _handleHighlightMessage];
  }

  else if ([*v2 isEqualToString:@"PerformSysdiagnose"])
  {
    v9 = a1[5];

    [v9 _handlePerformSysdiagnoseMessage];
  }

  else if (([*v2 isEqualToString:@"DummyPacket"] & 1) == 0 && (objc_msgSend(*v2, "isEqualToString:", @"BurstDummyPacket") & 1) == 0)
  {
    v10 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __63__AXSSInterDeviceCommunicator_session_didReceiveData_fromPeer___block_invoke_cold_1(v2, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

- (void)session:(id)session didStartReceivingResourceWithName:(id)name fromPeer:(id)peer withProgress:(id)progress
{
  v6 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [AXSSInterDeviceCommunicator session:didStartReceivingResourceWithName:fromPeer:withProgress:];
  }
}

- (void)session:(id)session didFinishReceivingResourceWithName:(id)name fromPeer:(id)peer atURL:(id)l withError:(id)error
{
  v7 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [AXSSInterDeviceCommunicator session:didFinishReceivingResourceWithName:fromPeer:atURL:withError:];
  }
}

- (void)session:(id)session didReceiveStream:(id)stream withName:(id)name fromPeer:(id)peer
{
  v6 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [AXSSInterDeviceCommunicator session:didReceiveStream:withName:fromPeer:];
  }
}

- (void)session:(id)session peer:(id)peer didChangeState:(int64_t)state
{
  peerCopy = peer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AXSSInterDeviceCommunicator_session_peer_didChangeState___block_invoke;
  block[3] = &unk_1E8135CE0;
  selfCopy = self;
  stateCopy = state;
  v10 = peerCopy;
  v8 = peerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__AXSSInterDeviceCommunicator_session_peer_didChangeState___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
    v5 = [*(a1 + 40) _stateDescription];
    v58 = 138412802;
    v59 = v3;
    v60 = 2112;
    v61 = v4;
    v62 = 2112;
    v63 = v5;
    _os_log_impl(&dword_1C0E8A000, v2, OS_LOG_TYPE_DEFAULT, "Peer %@ did change state to %@ while our state was %@", &v58, 0x20u);
  }

  v6 = [*(a1 + 40) state];
  if (v6 > 4)
  {
    if ((v6 - 5) >= 2)
    {
      goto LABEL_40;
    }

    v19 = [*(a1 + 40) forwarder];

    if (!v19)
    {
      v20 = AXSSLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(AXSSInterDeviceCommunicator *)v20 _handleHighlightMessage:v21];
      }
    }

    v28 = *(a1 + 32);
    v29 = [*(a1 + 40) forwarder];
LABEL_36:
    v55 = v29;
    v56 = [v28 isEqual:v29];

    if (!v56 || *(a1 + 48) == 2)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  switch(v6)
  {
    case 1:
      v30 = *(a1 + 40);
      if (*(a1 + 48) == 2)
      {
        v31 = [v30 deviceTypesByPeerID];
        v32 = [v31 objectForKeyedSubscript:*(a1 + 32)];

        if (![v32 length])
        {
          v33 = AXSSLogForCategory(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            __59__AXSSInterDeviceCommunicator_session_peer_didChangeState___block_invoke_cold_4(v33, v34, v35, v36, v37, v38, v39, v40);
          }
        }

        if ([v32 length])
        {
          v41 = AXSSLogForCategory(1);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(a1 + 32);
            v58 = 138412290;
            v59 = v42;
            _os_log_impl(&dword_1C0E8A000, v41, OS_LOG_TYPE_DEFAULT, "Added to available results: %@", &v58, 0xCu);
          }

          v43 = [*(a1 + 40) availableDevices];
          v44 = [AXSSInterDeviceSearchResult searchResultWithPeerID:*(a1 + 32) deviceType:v32];
          [v43 addObject:v44];

          v45 = [*(a1 + 40) searchObserver];
          [v45 didUpdateSearchResults];
        }
      }

      else
      {
        [v30 _removePeerFromAvailableDevices:*(a1 + 32)];
      }

      break;
    case 2:
      v46 = [*(a1 + 40) receiver];

      if (!v46)
      {
        v47 = AXSSLogForCategory(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          [(AXSSInterDeviceCommunicator *)v47 setState:v48, v49, v50, v51, v52, v53, v54];
        }
      }

      v28 = *(a1 + 32);
      v29 = [*(a1 + 40) receiver];
      goto LABEL_36;
    case 4:
      v7 = [*(a1 + 40) forwarder];

      if (!v7)
      {
        v8 = AXSSLogForCategory(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(AXSSInterDeviceCommunicator *)v8 _handleHighlightMessage:v9];
        }
      }

      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) forwarder];
      LODWORD(v16) = [v16 isEqual:v17];

      if (v16)
      {
        v18 = *(a1 + 48);
        if (v18)
        {
          if (v18 == 2)
          {
            [*(a1 + 40) setState:5];
            [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(a1 + 40) selector:sel__handleTimeoutAsPotentialReceiver object:0];
            [*(a1 + 40) performSelector:sel__handleTimeoutAsPotentialReceiver withObject:0 afterDelay:120.0];
          }

          break;
        }

LABEL_38:
        [*(a1 + 40) setState:0];
      }

      break;
  }

LABEL_40:
  v57 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)session didReceiveCertificate:(id)certificate fromPeer:(id)peer certificateHandler:(id)handler
{
  peerCopy = peer;
  handlerCopy = handler;
  certificateCopy = certificate;
  securityHelper = [(AXSSInterDeviceCommunicator *)self securityHelper];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__AXSSInterDeviceCommunicator_session_didReceiveCertificate_fromPeer_certificateHandler___block_invoke;
  v15[3] = &unk_1E8135D08;
  v16 = peerCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = peerCopy;
  [securityHelper verifyCertificate:certificateCopy completion:v15];
}

uint64_t __89__AXSSInterDeviceCommunicator_session_didReceiveCertificate_fromPeer_certificateHandler___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_1C0E8A000, v4, OS_LOG_TYPE_DEFAULT, "Should trust peer %@: %i", &v8, 0x12u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)browser:(id)browser foundPeer:(id)peer withDiscoveryInfo:(id)info
{
  v21 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  infoCopy = info;
  v9 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = peerCopy;
    v19 = 2112;
    v20 = infoCopy;
    _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_DEFAULT, "Found peer %@ with info %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AXSSInterDeviceCommunicator_browser_foundPeer_withDiscoveryInfo___block_invoke;
  block[3] = &unk_1E8134848;
  v14 = infoCopy;
  selfCopy = self;
  v16 = peerCopy;
  v10 = peerCopy;
  v11 = infoCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v12 = *MEMORY[0x1E69E9840];
}

void __67__AXSSInterDeviceCommunicator_browser_foundPeer_withDiscoveryInfo___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"AXSSIDCVersion"];
  if (!v2 || (v3 = v2, [*(a1 + 32) objectForKeyedSubscript:@"AXSSIDCDeviceType"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v3, !v5))
  {
    v13 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __67__AXSSInterDeviceCommunicator_browser_foundPeer_withDiscoveryInfo___block_invoke_cold_1();
    }

    goto LABEL_10;
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"AXSSIDCVersion"];
  v7 = [v6 integerValue];

  if (v7 != 1)
  {
    v13 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v17 = v7;
      v18 = 2048;
      v19 = 1;
      _os_log_impl(&dword_1C0E8A000, v13, OS_LOG_TYPE_DEFAULT, "Compatibility version %ld did not match our version %ld", buf, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (![*(a1 + 40) _setUpSessionIfNecessary])
  {
LABEL_11:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = [*(a1 + 40) browser];
  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) session];
  [v8 invitePeer:v9 toSession:v10 withContext:0 timeout:30.0];

  v15 = [*(a1 + 32) objectForKeyedSubscript:@"AXSSIDCDeviceType"];
  v11 = [*(a1 + 40) deviceTypesByPeerID];
  [v11 setObject:v15 forKeyedSubscript:*(a1 + 48)];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)browser:(id)browser lostPeer:(id)peer
{
  v13 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v6 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = peerCopy;
    _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_DEFAULT, "Lost peer %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__AXSSInterDeviceCommunicator_browser_lostPeer___block_invoke;
  v9[3] = &unk_1E8134950;
  v9[4] = self;
  v10 = peerCopy;
  v7 = peerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __48__AXSSInterDeviceCommunicator_browser_lostPeer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = *(a1 + 32);
  if (v2 != 1)
  {
    if (([v3 state] == 6 || objc_msgSend(*(a1 + 32), "state") == 5 || objc_msgSend(*(a1 + 32), "state") == 4) && (objc_msgSend(*(a1 + 32), "forwarder"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", *(a1 + 40)), v5, v6))
    {
      v7 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v8 = "Lost peer was forwarder, so stopping now";
        v9 = &v13;
LABEL_15:
        _os_log_impl(&dword_1C0E8A000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      if ([*(a1 + 32) state] != 2)
      {
        return;
      }

      v10 = [*(a1 + 32) receiver];
      v11 = [v10 isEqual:*(a1 + 40)];

      if (!v11)
      {
        return;
      }

      v7 = AXSSLogForCategory(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v8 = "Lost peer was receiver, so stopping now";
        v9 = &v12;
        goto LABEL_15;
      }
    }

    [*(a1 + 32) setState:0];
    return;
  }

  v4 = *(a1 + 40);

  [v3 _removePeerFromAvailableDevices:v4];
}

- (void)browser:(id)browser didNotStartBrowsingForPeers:(id)peers
{
  peersCopy = peers;
  v6 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [AXSSInterDeviceCommunicator browser:didNotStartBrowsingForPeers:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AXSSInterDeviceCommunicator_browser_didNotStartBrowsingForPeers___block_invoke;
  block[3] = &unk_1E8134870;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)advertiser:(id)advertiser didReceiveInvitationFromPeer:(id)peer withContext:(id)context invitationHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  contextCopy = context;
  handlerCopy = handler;
  v12 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = peerCopy;
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&dword_1C0E8A000, v12, OS_LOG_TYPE_DEFAULT, "Received invitation from %@ with context %@.", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__AXSSInterDeviceCommunicator_advertiser_didReceiveInvitationFromPeer_withContext_invitationHandler___block_invoke;
  block[3] = &unk_1E8135D30;
  block[4] = self;
  v17 = peerCopy;
  v18 = handlerCopy;
  v13 = handlerCopy;
  v14 = peerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v15 = *MEMORY[0x1E69E9840];
}

void __101__AXSSInterDeviceCommunicator_advertiser_didReceiveInvitationFromPeer_withContext_invitationHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] != 3)
  {
    v6 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) _stateDescription];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_DEFAULT, "State was %@, so ignoring invitation from peer.", &v9, 0xCu);
    }

    goto LABEL_9;
  }

  if (![*(a1 + 32) _setUpSessionIfNecessary])
  {
LABEL_9:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  [*(a1 + 32) setForwarder:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) session];
  (*(v2 + 16))(v2, 1, v3);

  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E69E9840];

  [v4 setState:4];
}

- (void)advertiser:(id)advertiser didNotStartAdvertisingPeer:(id)peer
{
  peerCopy = peer;
  v6 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [AXSSInterDeviceCommunicator advertiser:didNotStartAdvertisingPeer:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AXSSInterDeviceCommunicator_advertiser_didNotStartAdvertisingPeer___block_invoke;
  block[3] = &unk_1E8134870;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)hasPeers
{
  devices = [(IDSService *)self->_service devices];
  v3 = [devices count] != 0;

  return v3;
}

- (void)sendHearingAidsMessage:(id)message toDevice:(id)device
{
  if (device)
  {
    [(AXSSInterDeviceCommunicator *)self _sendICloudMessage:message toDevice:?];
  }

  else
  {
    [(AXSSInterDeviceCommunicator *)self _broadcastICloudMessage:message];
  }
}

- (AXSSInterDeviceConnectionListener)connectionListener
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionListener);

  return WeakRetained;
}

- (AXSSInterDeviceActionReceiver)actionReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_actionReceiver);

  return WeakRetained;
}

- (AXSSInterDeviceSearchObserver)searchObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_searchObserver);

  return WeakRetained;
}

- (AXSSInterDeviceHearingAidsMessagesObserver)hearingAidsMessagesObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_hearingAidsMessagesObserver);

  return WeakRetained;
}

- (void)setState:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a1, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setState:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a1, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setState:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a1, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setState:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a1, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setState:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a1, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setState:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a1, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setState:(uint64_t)a3 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a1, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_broadcastICloudMessage:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_7(&dword_1C0E8A000, v0, v1, "Error sending message %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_setUpSessionIfNecessary
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)searchResults
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, self, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)highlightSearchResult:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error highlighting search result: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)highlightSearchResult:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error serializing message to highlight receiver: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)selectSearchResult:settings:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error accepting device: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)selectSearchResult:settings:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error rejecting devices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)selectSearchResult:settings:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error serializing message to deselect search results: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)selectSearchResult:settings:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error serializing message to select search result: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_sendDataToReceiver:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Unable to send data to receiver: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_sendDataToReceiver:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)forwardSwitchEvent:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error serializing message to forward switch event: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)service:account:identifier:didSendWithSuccess:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_7(&dword_1C0E8A000, v0, v1, "Failed to send message with identifier %@. Error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_handleSwitchEventMessageWithPayload:fromPeer:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Unexpected type for switch event payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleSwitchEventMessageWithPayload:fromPeer:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Unexpected type for switch event index: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleSwitchEventMessageWithPayload:fromPeer:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Unexpected type for switch event dictionary representation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleSwitchEventMessageWithPayload:(void *)a1 fromPeer:.cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 _stateDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleSelectionMessageWithPayload:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 _stateDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleSelectionMessageWithPayload:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleSelectionMessageWithPayload:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Unexpected type for selection flag: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)session:didReceiveData:fromPeer:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)session:didReceiveData:fromPeer:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6(&dword_1C0E8A000, v0, v1, "Received burst dummy packet at %f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)session:didReceiveData:fromPeer:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6(&dword_1C0E8A000, v0, v1, "Received dummy packet at %f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__AXSSInterDeviceCommunicator_session_didReceiveData_fromPeer___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a2, a3, "Unexpected type for message: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)session:didStartReceivingResourceWithName:fromPeer:withProgress:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)session:didFinishReceivingResourceWithName:fromPeer:atURL:withError:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)session:didReceiveStream:withName:fromPeer:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__AXSSInterDeviceCommunicator_session_peer_didChangeState___block_invoke_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a1, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __67__AXSSInterDeviceCommunicator_browser_foundPeer_withDiscoveryInfo___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)browser:didNotStartBrowsingForPeers:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Error browsing: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)advertiser:didNotStartAdvertisingPeer:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "Did not start advertising: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end