@interface ATDeviceProvisioningHandler
- (ATDeviceProvisioningHandler)init;
- (id)_getEndpointInfo;
- (void)_handleBeginSessionRequest:(id)request onMessageLink:(id)link;
- (void)_handleCreateSessionRequest:(id)request onMessageLink:(id)link;
- (void)_handleRegisterEndpointRequest:(id)request onMessageLink:(id)link;
- (void)_processBeginSessionResponse:(id)response onMessageLink:(id)link;
- (void)_processCreateSessionResponse:(id)response onMessageLink:(id)link;
- (void)_processRegisterEndpointResponse:(id)response onMessageLink:(id)link;
- (void)_sendBeginSessionRequestOnMessageLink:(id)link;
- (void)_sendCreateSessionRequestWithData:(id)data onMessageLink:(id)link;
- (void)_sendRegisterEndpointRequestOnMessageLink:(id)link;
- (void)_setMessageLinkAsInitialized:(id)initialized;
- (void)messageLink:(id)link didReceiveRequest:(id)request;
- (void)messageLinkWasOpened:(id)opened;
@end

@implementation ATDeviceProvisioningHandler

- (void)_setMessageLinkAsInitialized:(id)initialized
{
  initializedCopy = initialized;
  if ([(ATDeviceSettings *)self->_settings grappaEnabled])
  {
    v4 = [[ATGrappaSignatureProvider alloc] initWithGrappaSession:self->_grappaSession];
  }

  else
  {
    v4 = objc_alloc_init(ATMD5SignatureProvider);
  }

  v5 = v4;
  [initializedCopy setSignatureProvider:v4];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  ATReportEventAddDoubleToScalarKey();
  [initializedCopy setInitialized:1];
}

- (id)_getEndpointInfo
{
  v28 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  libraryIdentifier = [(ATDeviceSettings *)self->_settings libraryIdentifier];
  [dictionary setObject:libraryIdentifier forKey:@"_ProvisioningLibraryIdentifier"];

  v5 = MGCopyAnswer();
  if (v5)
  {
    [dictionary setObject:v5 forKey:@"_ProvisioningHostOSVersion"];
  }

  [dictionary setObject:@"iOS" forKey:@"_ProvisioningHostOSType"];
  v6 = MGCopyAnswer();
  if (v6)
  {
    [dictionary setObject:v6 forKey:@"_ProvisioningHostModel"];
  }

  v7 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = +[ATClientController sharedInstance];
  allClients = [v8 allClients];

  v10 = [allClients countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(allClients);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 conformsToProtocol:&unk_2837092A8])
        {
          syncDataClass = [v14 syncDataClass];
          [v7 addObject:syncDataClass];
        }
      }

      v11 = [allClients countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  allObjects = [v7 allObjects];
  [dictionary setObject:allObjects forKey:@"_ProvisioningEnabledDataClasses"];

  mEMORY[0x277D7FBA8] = [MEMORY[0x277D7FBA8] sharedMonitor];
  pairedDevicePairingID = [mEMORY[0x277D7FBA8] pairedDevicePairingID];

  if (pairedDevicePairingID)
  {
    uUIDString = [pairedDevicePairingID UUIDString];
    [dictionary setObject:uUIDString forKey:@"_ProvisioningDevicePairingId"];
  }

  currentDeviceInfo = [MEMORY[0x277D7FA80] currentDeviceInfo];
  deviceGUID = [currentDeviceInfo deviceGUID];

  if (deviceGUID)
  {
    [dictionary setObject:deviceGUID forKey:@"_ProvisioningDeviceGUID"];
  }

  return dictionary;
}

- (void)_processBeginSessionResponse:(id)response onMessageLink:(id)link
{
  v13 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  linkCopy = link;
  if (([responseCopy isPartial] & 1) == 0)
  {
    error = [responseCopy error];

    if (error)
    {
      v9 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        error2 = [responseCopy error];
        v11 = 138543362;
        v12 = error2;
        _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_ERROR, "Failed to process BeginSession response: %{public}@", &v11, 0xCu);
      }

      [linkCopy close];
    }

    else
    {
      [(ATDeviceProvisioningHandler *)self _setMessageLinkAsInitialized:linkCopy];
    }
  }
}

- (void)_handleBeginSessionRequest:(id)request onMessageLink:(id)link
{
  linkCopy = link;
  v7 = [request responseWithError:0 parameters:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__ATDeviceProvisioningHandler__handleBeginSessionRequest_onMessageLink___block_invoke;
  v9[3] = &unk_2784E59D8;
  v10 = linkCopy;
  selfCopy = self;
  v8 = linkCopy;
  [v8 sendResponse:v7 withCompletion:v9];
}

void __72__ATDeviceProvisioningHandler__handleBeginSessionRequest_onMessageLink___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "Failed to handle BeginSession request: %{public}@", &v5, 0xCu);
    }

    [*(a1 + 32) close];
  }

  else
  {
    [*(a1 + 40) _setMessageLinkAsInitialized:*(a1 + 32)];
  }
}

- (void)_sendBeginSessionRequestOnMessageLink:(id)link
{
  linkCopy = link;
  v5 = [objc_alloc(MEMORY[0x277CEA458]) initWithCommand:@"ProvisioningBeginSession" dataClass:@"Provisioning" parameters:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ATDeviceProvisioningHandler__sendBeginSessionRequestOnMessageLink___block_invoke;
  v7[3] = &unk_2784E50D8;
  v7[4] = self;
  v8 = linkCopy;
  v6 = linkCopy;
  [v6 sendRequest:v5 withCompletion:v7];
}

void __69__ATDeviceProvisioningHandler__sendBeginSessionRequestOnMessageLink___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 isPartial] & 1) == 0)
  {
    if (v6)
    {
      v7 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543362;
        v9 = v6;
        _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_ERROR, "Failed to send BeginSession request: %{public}@", &v8, 0xCu);
      }

      [*(a1 + 40) close];
    }

    else
    {
      [*(a1 + 32) _processBeginSessionResponse:v5 onMessageLink:*(a1 + 40)];
    }
  }
}

- (void)_processCreateSessionResponse:(id)response onMessageLink:(id)link
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  linkCopy = link;
  if (([responseCopy isPartial] & 1) == 0)
  {
    error = [responseCopy error];
    if (error)
    {
      v9 = error;
    }

    else if (!-[ATDeviceSettings grappaEnabled](self->_settings, "grappaEnabled") || ([responseCopy parameters], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", @"_ProvisioningSessionResposneData"), v12 = objc_claimAutoreleasedReturnValue(), v11, -[ATGrappaSession beginHostSessionWithDeviceResponseData:](self->_grappaSession, "beginHostSessionWithDeviceResponseData:", v12), v9 = objc_claimAutoreleasedReturnValue(), v12, !v9))
    {
      [(ATDeviceProvisioningHandler *)self _sendBeginSessionRequestOnMessageLink:linkCopy];
      goto LABEL_10;
    }

    v10 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_ERROR, "Failed to process CreateSession response: %{public}@", &v13, 0xCu);
    }

    [linkCopy close];
  }

LABEL_10:
}

- (void)_handleCreateSessionRequest:(id)request onMessageLink:(id)link
{
  requestCopy = request;
  linkCopy = link;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(ATDeviceSettings *)self->_settings grappaEnabled])
  {
    parameters = [requestCopy parameters];
    v10 = [parameters objectForKey:@"_ProvisioningSessionRequestData"];

    grappaSession = self->_grappaSession;
    v19 = 0;
    v12 = [(ATGrappaSession *)grappaSession establishDeviceSessionWithRequestData:v10 responseData:&v19];
    v13 = v19;
    v14 = v13;
    if (!v12 && v13)
    {
      [dictionary setObject:v13 forKey:@"_ProvisioningSessionResposneData"];
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = [requestCopy responseWithError:v12 parameters:dictionary];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__ATDeviceProvisioningHandler__handleCreateSessionRequest_onMessageLink___block_invoke;
  v17[3] = &unk_2784E58E8;
  v18 = linkCopy;
  v16 = linkCopy;
  [v16 sendResponse:v15 withCompletion:v17];
}

void __73__ATDeviceProvisioningHandler__handleCreateSessionRequest_onMessageLink___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "Failed to send CreateSession response: %{public}@", &v5, 0xCu);
    }

    [*(a1 + 32) close];
  }
}

- (void)_sendCreateSessionRequestWithData:(id)data onMessageLink:(id)link
{
  dataCopy = data;
  linkCopy = link;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = dictionary;
  if (dataCopy)
  {
    [dictionary setObject:dataCopy forKey:@"_ProvisioningSessionRequestData"];
  }

  v10 = [objc_alloc(MEMORY[0x277CEA458]) initWithCommand:@"ProvisioningCreateSession" dataClass:@"Provisioning" parameters:v9];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__ATDeviceProvisioningHandler__sendCreateSessionRequestWithData_onMessageLink___block_invoke;
  v12[3] = &unk_2784E50D8;
  v12[4] = self;
  v13 = linkCopy;
  v11 = linkCopy;
  [v11 sendRequest:v10 withCompletion:v12];
}

void __79__ATDeviceProvisioningHandler__sendCreateSessionRequestWithData_onMessageLink___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 isPartial] & 1) == 0)
  {
    if (v6)
    {
      v7 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543362;
        v9 = v6;
        _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_ERROR, "Failed to send create session request: %{public}@", &v8, 0xCu);
      }

      [*(a1 + 40) close];
    }

    else
    {
      [*(a1 + 32) _processCreateSessionResponse:v5 onMessageLink:*(a1 + 40)];
    }
  }
}

- (void)_processRegisterEndpointResponse:(id)response onMessageLink:(id)link
{
  v36 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  linkCopy = link;
  if (([responseCopy isPartial] & 1) == 0)
  {
    error = [responseCopy error];
    if (error)
    {
      v9 = error;
      v10 = 0;
      goto LABEL_13;
    }

    parameters = [responseCopy parameters];
    v12 = [parameters objectForKey:@"_ProvisioningLibraryIdentifier"];
    [linkCopy setIdentifier:v12];
    v13 = [(ATDeviceSettings *)self->_settings hostInfoForLibrary:v12];
    v14 = [parameters objectForKey:@"_ProvisioningHostModel"];
    [v13 setModel:v14];

    v15 = [parameters objectForKey:@"_ProvisioningHostOSType"];
    [v13 setOsType:v15];

    v16 = [parameters objectForKey:@"_ProvisioningHostOSVersion"];
    [v13 setOsVersion:v16];

    v17 = [parameters objectForKey:@"_ProvisioningDeviceInfo"];
    [v13 setGrappaInfo:v17];

    v18 = [parameters objectForKey:@"_ProvisioningEnabledDataClasses"];
    [v13 setEnabledDataClasses:v18];

    v19 = [parameters objectForKey:@"_ProvisioningDeviceGUID"];
    [v13 setDeviceGUID:v19];

    v20 = [parameters objectForKey:@"_ProvisioningDevicePairingId"];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v28 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v33 = v12;
        _os_log_impl(&dword_223819000, v28, OS_LOG_TYPE_DEFAULT, "No pairing ID provided from endpoint %{public}@ - assuming active paired device", buf, 0xCu);
      }

      mEMORY[0x277D7FBA8] = [MEMORY[0x277D7FBA8] sharedMonitor];
      activePairedDevicePairingID = [mEMORY[0x277D7FBA8] activePairedDevicePairingID];

      if (!activePairedDevicePairingID || ([activePairedDevicePairingID UUIDString], v21 = objc_claimAutoreleasedReturnValue(), activePairedDevicePairingID, !v21))
      {
LABEL_7:
        [(ATDeviceSettings *)self->_settings setHostInfo:v13 forLibrary:v12];
        v22 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v33 = v12;
          v34 = 2114;
          v35 = v13;
          _os_log_impl(&dword_223819000, v22, OS_LOG_TYPE_DEFAULT, "Registered with endpoint %{public}@ hostInfo=%{public}@", buf, 0x16u);
        }

        if ([(ATDeviceSettings *)self->_settings grappaEnabled])
        {
          v23 = [[ATGrappaSession alloc] initWithType:1];
          grappaSession = self->_grappaSession;
          self->_grappaSession = v23;

          v25 = self->_grappaSession;
          grappaInfo = [v13 grappaInfo];
          v31 = 0;
          v9 = [(ATGrappaSession *)v25 establishHostSessionWithDeviceInfo:grappaInfo clientRequestData:&v31];
          v10 = v31;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        if (!v9)
        {
          [(ATDeviceProvisioningHandler *)self _sendCreateSessionRequestWithData:v10 onMessageLink:linkCopy];
LABEL_16:

          goto LABEL_17;
        }

LABEL_13:
        v27 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v33 = v9;
          _os_log_impl(&dword_223819000, v27, OS_LOG_TYPE_ERROR, "Failed to register endpoint: %{public}@", buf, 0xCu);
        }

        [linkCopy close];
        goto LABEL_16;
      }
    }

    [v13 setDevicePairingId:v21];

    goto LABEL_7;
  }

LABEL_17:
}

- (void)_handleRegisterEndpointRequest:(id)request onMessageLink:(id)link
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  linkCopy = link;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  parameters = [requestCopy parameters];
  v10 = [parameters objectForKey:@"_ProvisioningLibraryIdentifier"];
  if (!v10)
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:0];
    goto LABEL_15;
  }

  [linkCopy setIdentifier:v10];
  v11 = [(ATDeviceSettings *)self->_settings hostInfoForLibrary:v10];
  v12 = [parameters objectForKey:@"_ProvisioningHostModel"];
  [v11 setModel:v12];

  v13 = [parameters objectForKey:@"_ProvisioningHostOSType"];
  [v11 setOsType:v13];

  v14 = [parameters objectForKey:@"_ProvisioningHostOSVersion"];
  [v11 setOsVersion:v14];

  v15 = [parameters objectForKey:@"_ProvisioningDeviceInfo"];
  [v11 setGrappaInfo:v15];

  v16 = [parameters objectForKey:@"_ProvisioningEnabledDataClasses"];
  [v11 setEnabledDataClasses:v16];

  v17 = [parameters objectForKey:@"_ProvisioningDevicePairingId"];
  [v11 setDevicePairingId:v17];

  v18 = [parameters objectForKey:@"_ProvisioningDeviceGUID"];
  [v11 setDeviceGUID:v18];

  v19 = [parameters objectForKey:@"_ProvisioningDevicePairingId"];
  if (v19)
  {
    uUIDString = v19;
  }

  else
  {
    mEMORY[0x277D7FBA8] = [MEMORY[0x277D7FBA8] sharedMonitor];
    activePairedDevicePairingID = [mEMORY[0x277D7FBA8] activePairedDevicePairingID];

    if (!activePairedDevicePairingID)
    {
      goto LABEL_5;
    }

    uUIDString = [activePairedDevicePairingID UUIDString];

    if (!uUIDString)
    {
      goto LABEL_5;
    }
  }

  [v11 setDevicePairingId:uUIDString];

LABEL_5:
  [(ATDeviceSettings *)self->_settings setHostInfo:v11 forLibrary:v10];
  v21 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = v10;
    v35 = 2114;
    v36 = v11;
    _os_log_impl(&dword_223819000, v21, OS_LOG_TYPE_DEFAULT, "Registering with endpoint %{public}@; hostInfo=%{public}@", buf, 0x16u);
  }

  _getEndpointInfo = [(ATDeviceProvisioningHandler *)self _getEndpointInfo];
  [dictionary addEntriesFromDictionary:_getEndpointInfo];

  v23 = [[ATGrappaSession alloc] initWithType:0];
  grappaSession = self->_grappaSession;
  self->_grappaSession = v23;

  deviceInfo = [(ATGrappaSession *)self->_grappaSession deviceInfo];
  if (deviceInfo)
  {
    [dictionary setObject:deviceInfo forKey:@"_ProvisioningDeviceInfo"];
    v26 = 0;
  }

  else
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
  }

LABEL_15:
  v29 = [requestCopy responseWithError:v26 parameters:dictionary];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__ATDeviceProvisioningHandler__handleRegisterEndpointRequest_onMessageLink___block_invoke;
  v31[3] = &unk_2784E58E8;
  v32 = linkCopy;
  v30 = linkCopy;
  [v30 sendResponse:v29 withCompletion:v31];
}

void __76__ATDeviceProvisioningHandler__handleRegisterEndpointRequest_onMessageLink___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "Failed to send RegisterEndpoint response: %{public}@", &v5, 0xCu);
    }

    [*(a1 + 32) close];
  }
}

- (void)_sendRegisterEndpointRequestOnMessageLink:(id)link
{
  linkCopy = link;
  _getEndpointInfo = [(ATDeviceProvisioningHandler *)self _getEndpointInfo];
  v6 = [objc_alloc(MEMORY[0x277CEA458]) initWithCommand:@"ProvisioningRegisterEndpoint" dataClass:@"Provisioning" parameters:_getEndpointInfo];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ATDeviceProvisioningHandler__sendRegisterEndpointRequestOnMessageLink___block_invoke;
  v8[3] = &unk_2784E50D8;
  v8[4] = self;
  v9 = linkCopy;
  v7 = linkCopy;
  [v7 sendRequest:v6 withCompletion:v8];
}

void __73__ATDeviceProvisioningHandler__sendRegisterEndpointRequestOnMessageLink___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 isPartial] & 1) == 0)
  {
    if (v6)
    {
      v7 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543362;
        v9 = v6;
        _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_ERROR, "Failed to provision link: %{public}@", &v8, 0xCu);
      }

      [*(a1 + 40) close];
    }

    else
    {
      [*(a1 + 32) _processRegisterEndpointResponse:v5 onMessageLink:*(a1 + 40)];
    }
  }
}

- (void)messageLink:(id)link didReceiveRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  requestCopy = request;
  if ([linkCopy isInitialized])
  {
    v8 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      command = [requestCopy command];
      v19 = 138543362;
      v20 = command;
      v10 = "Received provisioning request on initialized link. command=%{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
LABEL_4:
      _os_log_impl(&dword_223819000, v11, v12, v10, &v19, 0xCu);
    }
  }

  else
  {
    command2 = [requestCopy command];
    v14 = [command2 isEqualToString:@"ProvisioningRegisterEndpoint"];

    if (v14)
    {
      [(ATDeviceProvisioningHandler *)self _handleRegisterEndpointRequest:requestCopy onMessageLink:linkCopy];
      goto LABEL_12;
    }

    command3 = [requestCopy command];
    v16 = [command3 isEqualToString:@"ProvisioningCreateSession"];

    if (v16)
    {
      [(ATDeviceProvisioningHandler *)self _handleCreateSessionRequest:requestCopy onMessageLink:linkCopy];
      goto LABEL_12;
    }

    command4 = [requestCopy command];
    v18 = [command4 isEqualToString:@"ProvisioningBeginSession"];

    if (v18)
    {
      [(ATDeviceProvisioningHandler *)self _handleBeginSessionRequest:requestCopy onMessageLink:linkCopy];
      goto LABEL_12;
    }

    v8 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      command = [requestCopy command];
      v19 = 138543362;
      v20 = command;
      v10 = "Received unexpected provisioning request. command=%{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_4;
    }
  }

  [linkCopy close];
LABEL_12:
}

- (void)messageLinkWasOpened:(id)opened
{
  v11 = *MEMORY[0x277D85DE8];
  openedCopy = opened;
  endpointType = [openedCopy endpointType];
  v6 = _ATLogCategoryFramework();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (endpointType == 1)
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = openedCopy;
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ opened - starting provisioning", &v9, 0xCu);
    }

    [(ATDeviceProvisioningHandler *)self _sendRegisterEndpointRequestOnMessageLink:openedCopy];
  }

  else
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = openedCopy;
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ opened - waiting for provisioning message from server", &v9, 0xCu);
    }
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_linkOpenTime = v8;
}

- (ATDeviceProvisioningHandler)init
{
  v6.receiver = self;
  v6.super_class = ATDeviceProvisioningHandler;
  v2 = [(ATDeviceProvisioningHandler *)&v6 init];
  if (v2)
  {
    v3 = +[ATDeviceSettings sharedInstance];
    settings = v2->_settings;
    v2->_settings = v3;
  }

  return v2;
}

@end