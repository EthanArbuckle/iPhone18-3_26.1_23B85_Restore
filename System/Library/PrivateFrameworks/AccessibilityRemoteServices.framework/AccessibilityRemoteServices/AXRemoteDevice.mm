@interface AXRemoteDevice
- (AXRemoteDevice)initWithDevice:(id)a3;
- (AXRemoteDeviceConnectionDelegate)connectionDelegate;
- (NSString)displayName;
- (NSString)identifier;
- (id)_deviceName;
- (id)customizedRemoteActionForHandGestureEventUsage:(int64_t)a3;
- (id)remoteActionsForPreferredContextType:(int64_t)a3;
- (void)_setRemoteAction:(id)a3 forHandGestureEventUsage:(int64_t)a4;
- (void)connectIfNecessary:(id)a3;
- (void)disconnect;
- (void)sendPayload:(id)a3 withEventID:(id)a4 withTimeout:(double)a5 completion:(id)a6;
@end

@implementation AXRemoteDevice

- (AXRemoteDevice)initWithDevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXRemoteDevice;
  v5 = [(AXRemoteDevice *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AXRemoteDevice *)v5 setDevice:v4];
    v7 = objc_opt_new();
    [(AXRemoteDevice *)v6 setDeviceGestureCustomizations:v7];
  }

  return v6;
}

- (NSString)displayName
{
  v2 = [(AXRemoteDevice *)self device];
  v3 = [v2 name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"<unknown>";
  }

  v6 = v5;

  return &v5->isa;
}

- (NSString)identifier
{
  v2 = [(AXRemoteDevice *)self device];
  v3 = [v2 effectiveIdentifier];

  return v3;
}

- (id)remoteActionsForPreferredContextType:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(AXRemoteDevice *)self deviceRemoteActions];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 preferredContextType] == a3)
        {
          v12 = [v10 remoteActions];

          goto LABEL_15;
        }

        if (![v10 preferredContextType])
        {
          v11 = [v10 remoteActions];

          v8 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v8 = v8;
  v12 = v8;
LABEL_15:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)customizedRemoteActionForHandGestureEventUsage:(int64_t)a3
{
  if ((a3 - 2) > 2)
  {
    v3 = @"clench";
  }

  else
  {
    v3 = off_2786659D8[a3 - 2];
  }

  v4 = [(AXRemoteDevice *)self deviceGestureCustomizations];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = @"None";
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (void)_setRemoteAction:(id)a3 forHandGestureEventUsage:(int64_t)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((a4 - 2) > 2)
  {
    v7 = @"clench";
  }

  else
  {
    v7 = off_2786659D8[a4 - 2];
  }

  v8 = [(AXRemoteDevice *)self deviceGestureCustomizations];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 isEqualToString:v6];

  if ((v10 & 1) == 0)
  {
    v11 = [(AXRemoteDevice *)self deviceGestureCustomizations];
    [v11 setObject:v6 forKeyedSubscript:v7];

    v15 = @"HandGestureCustomizedActions";
    v12 = [(AXRemoteDevice *)self deviceGestureCustomizations];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [(AXRemoteDevice *)self sendPayload:v13 withEventID:@"com.apple.AXRemoteServices.DefaultEventID"];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connectIfNecessary:(id)a3
{
  v4 = a3;
  if ([(AXRemoteDevice *)self connected])
  {
    v4[2](v4, 1);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D44160]);
    [v5 setServiceType:@"com.apple.accessibility.axremoted.rapportWake"];
    v6 = [(AXRemoteDevice *)self device];
    [v5 setDestinationDevice:v6];

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__AXRemoteDevice_connectIfNecessary___block_invoke;
    v14[3] = &unk_2786656F8;
    objc_copyWeak(&v15, &location);
    [v5 setDeviceLostHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__AXRemoteDevice_connectIfNecessary___block_invoke_2;
    v12[3] = &unk_2786658D0;
    objc_copyWeak(&v13, &location);
    [v5 setDisconnectHandler:v12];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__AXRemoteDevice_connectIfNecessary___block_invoke_3;
    v8[3] = &unk_278665920;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    v8[4] = self;
    v7 = v5;
    v9 = v7;
    [v7 activateWithCompletion:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __37__AXRemoteDevice_connectIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained connected])
    {
      v5 = [v10 effectiveIdentifier];
      v6 = [v4 device];
      v7 = [v6 effectiveIdentifier];
      v8 = [v5 isEqualToString:v7];

      if (v8)
      {
        v9 = [v4 connectionDelegate];
        [v9 remoteDeviceDidUnexpectedlyDisconnect:v4];
      }
    }
  }
}

uint64_t __37__AXRemoteDevice_connectIfNecessary___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained connected])
    {
      v2 = [v4 connectionDelegate];
      [v2 remoteDeviceDidUnexpectedlyDisconnect:v4];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __37__AXRemoteDevice_connectIfNecessary___block_invoke_3(id *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ax_remote_connection_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v6 = [WeakRetained device];
    *buf = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_22952F000, v4, OS_LOG_TYPE_INFO, "Connected to device: %@ with error: %@", buf, 0x16u);
  }

  if (v3)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v20 = @"requestsVoiceOverEnabled";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSVoiceOverTouchEnabled()];
    v21 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    v19[0] = MEMORY[0x277CBEC38];
    v18[0] = @"isConnecting";
    v18[1] = @"connectingDeviceName";
    v9 = [a1[4] _deviceName];
    v19[1] = v9;
    v18[2] = @"connectingDeviceOptions";
    v19[2] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v11 = a1[5];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__AXRemoteDevice_connectIfNecessary___block_invoke_6;
    v13[3] = &unk_2786658F8;
    objc_copyWeak(&v17, a1 + 7);
    v14 = 0;
    v16 = a1[6];
    v15 = a1[5];
    [v11 sendRequestID:@"com.apple.AXRemoteServices.ConnectionSetup" request:v10 options:0 responseHandler:v13];

    objc_destroyWeak(&v17);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __37__AXRemoteDevice_connectIfNecessary___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = ax_remote_connection_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v9 = [WeakRetained device];
    v10 = *(a1 + 32);
    *buf = 138412802;
    v50 = v9;
    v51 = 2112;
    v52 = v6;
    v53 = 2112;
    v54 = v10;
    _os_log_impl(&dword_22952F000, v7, OS_LOG_TYPE_INFO, "Requested actions from device: %@, response: %@, error: %@", buf, 0x20u);
  }

  v11 = [v6 objectForKeyedSubscript:@"remoteActions"];
  v12 = [v6 objectForKeyedSubscript:@"deviceType"];
  v13 = [v6 objectForKeyedSubscript:@"contextType"];
  v14 = [v6 objectForKeyedSubscript:@"HandGestureCustomizedActions"];
  if (!a4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = v14;
    v38 = v13;
    v39 = v12;
    v41 = a1;
    v42 = v6;
    v43 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v11;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v44 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:{@"preferredContextType", v37}];
          v22 = [v20 objectForKeyedSubscript:@"actionsList"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v23 = [v21 integerValue];
            v24 = AXRLocalizedSectionTitleForPreferredContextType(v23);
            v25 = [[AXRDeviceRemoteActionSectionContainer alloc] initWithLocalizedTitle:v24 preferredContextType:v23 remoteActions:v22];
            [v43 addObject:v25];
          }

          else
          {
            v24 = ax_remote_connection_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v50 = v20;
              _os_log_fault_impl(&dword_22952F000, v24, OS_LOG_TYPE_FAULT, "unexpected payload data types: %@", buf, 0xCu);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v17);
    }

    v12 = v39;
    v26 = [v39 integerValue];
    v27 = objc_loadWeakRetained((v41 + 56));
    [v27 setDeviceType:v26];

    v13 = v38;
    v28 = [v38 integerValue];
    v29 = objc_loadWeakRetained((v41 + 56));
    [v29 setContextType:v28];

    v30 = objc_loadWeakRetained((v41 + 56));
    [v30 setDeviceRemoteActions:v43];

    v31 = objc_loadWeakRetained((v41 + 56));
    v32 = [v31 deviceGestureCustomizations];
    v14 = v37;
    [v32 addEntriesFromDictionary:v37];

    v33 = objc_loadWeakRetained((v41 + 56));
    [v33 setConnected:1];

    v34 = *(v41 + 40);
    v35 = objc_loadWeakRetained((v41 + 56));
    [v35 setDeviceLinkClient:v34];

    (*(*(v41 + 48) + 16))();
    v6 = v42;
    v11 = v40;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_deviceName
{
  v2 = MGGetStringAnswer();
  if (!v2)
  {
    v2 = MGGetStringAnswer();
  }

  return v2;
}

- (void)disconnect
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = MEMORY[0x277CBEC28];
  v10[0] = @"isConnecting";
  v10[1] = @"connectingDeviceName";
  v3 = [(AXRemoteDevice *)self _deviceName];
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  objc_initWeak(&location, self);
  v5 = [(AXRemoteDevice *)self deviceLinkClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__AXRemoteDevice_disconnect__block_invoke;
  v7[3] = &unk_278665948;
  objc_copyWeak(&v8, &location);
  [v5 sendRequestID:@"com.apple.AXRemoteServices.ConnectionSetup" request:v4 options:0 responseHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  v6 = *MEMORY[0x277D85DE8];
}

void __28__AXRemoteDevice_disconnect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained deviceLinkClient];
  [v3 invalidate];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setDeviceLinkClient:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setConnected:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setContextType:0];
}

- (void)sendPayload:(id)a3 withEventID:(id)a4 withTimeout:(double)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = ax_remote_connection_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = a5;
    _os_log_impl(&dword_22952F000, v13, OS_LOG_TYPE_INFO, "sending payload: %@, eventID: %@, timeout %.2fs", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke;
  v18[3] = &unk_2786659B8;
  v14 = v12;
  v21 = v14;
  v22[1] = *&a5;
  objc_copyWeak(v22, buf);
  v15 = v11;
  v19 = v15;
  v16 = v10;
  v20 = v16;
  [(AXRemoteDevice *)self connectIfNecessary:v18];

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x277D85DE8];
}

void __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke(uint64_t a1, char a2)
{
  v19[5] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x277CBEC38];
    v4 = *MEMORY[0x277D44290];
    v18[0] = *MEMORY[0x277D44288];
    v18[1] = v4;
    v19[0] = MEMORY[0x277CBEC38];
    v19[1] = MEMORY[0x277CBEC38];
    v18[2] = *MEMORY[0x277D442F0];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
    v6 = *MEMORY[0x277D44268];
    v19[2] = v5;
    v19[3] = v3;
    v7 = *MEMORY[0x277D44270];
    v18[3] = v6;
    v18[4] = v7;
    v19[4] = &unk_283CD5390;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v10 = [WeakRetained deviceLinkClient];
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *MEMORY[0x277D44228];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke_20;
    v16[3] = &unk_278665990;
    v17 = *(a1 + 48);
    [v10 sendEventID:v11 event:v12 destinationID:v13 options:v8 completion:v16];
  }

  else
  {
    v14 = ax_remote_connection_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke_cold_1(v14);
    }

    (*(*(a1 + 48) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ax_remote_connection_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22952F000, v4, OS_LOG_TYPE_INFO, "event sent with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3 == 0);
  v5 = *MEMORY[0x277D85DE8];
}

- (AXRemoteDeviceConnectionDelegate)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

@end