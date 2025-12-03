@interface AXAuditService
- (AXAuditService)initWithTransport:(id)transport;
- (id)deviceAccessibilitySettings;
- (id)deviceAllSupportedAuditTypes;
- (id)deviceCapabilities;
- (void)auditer:(id)auditer didAppendLogWithMessage:(id)message;
- (void)auditer:(id)auditer didCompleteWithResults:(id)results;
- (void)auditer:(id)auditer didEncounterIssue:(id)issue;
- (void)axAuditDeviceManager:(id)manager settingDidChange:(id)change;
- (void)cancel;
- (void)connectionInterrupted;
- (void)deviceBeginAuditTypes:(id)types;
- (void)deviceHighlightIssue:(id)issue;
- (void)deviceHighlightIssues:(id)issues;
- (void)deviceInspectorEnable:(id)enable;
- (void)deviceInspectorSetMonitoredEventType:(id)type;
- (void)deviceResetToDefaultAccessibilitySettings;
- (void)deviceSetAppMonitoringEnabled:(id)enabled;
- (void)deviceSetAuditTargetPid:(id)pid;
- (void)deviceUpdateAccessibilitySetting:(id)setting withValue:(id)value;
- (void)requestHostAPIVersion;
- (void)resume;
- (void)setMaxConnectionEnqueue:(unint64_t)enqueue;
@end

@implementation AXAuditService

- (AXAuditService)initWithTransport:(id)transport
{
  transportCopy = transport;
  v22.receiver = self;
  v22.super_class = AXAuditService;
  v5 = [(AXAuditService *)&v22 init];
  v6 = v5;
  if (v5)
  {
    if (transportCopy)
    {
      objc_initWeak(&location, v5);
      v7 = [objc_alloc(MEMORY[0x277D03650]) initWithTransport:transportCopy];
      [v7 publishCapability:@"com.apple.accessibility.axAuditDaemon.protocolVersion" withVersion:157 forClass:0];
      [v7 setMaximumEnqueueSize:0x800000];
      [v7 setDispatchTarget:v6];
      v8 = os_transaction_create();
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __36__AXAuditService_initWithTransport___block_invoke;
      v18[3] = &unk_278BE3200;
      v6 = v6;
      v19 = v6;
      v9 = v8;
      v20 = v9;
      [v7 setMessageHandler:v18];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __36__AXAuditService_initWithTransport___block_invoke_2;
      v16 = &unk_278BE3380;
      objc_copyWeak(&v17, &location);
      [v7 setChannelHandler:&v13];
      objc_storeStrong(&v6->_connection, v7);
      [objc_opt_class() deviceSettingsManagerClass];
      v10 = objc_opt_new();
      deviceSettingsManager = v6->_deviceSettingsManager;
      v6->_deviceSettingsManager = v10;

      [(AXAuditDeviceSettingsManager *)v6->_deviceSettingsManager setDelegate:v6];
      [(AXAuditDeviceSettingsManager *)v6->_deviceSettingsManager startObservingChanges];
      [(AXAuditDeviceSettingsManager *)v6->_deviceSettingsManager cacheDeviceSettingsValues];
      objc_destroyWeak(&v17);

      objc_destroyWeak(&location);
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

void __36__AXAuditService_initWithTransport___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 errorStatus] == 2)
  {
    [*(a1 + 32) connectionInterrupted];
    v3 = [*(a1 + 32) connection];
    [v3 setDispatchTarget:0];

    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;
  }
}

void __36__AXAuditService_initWithTransport___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _channelRestrictBlock];

  if (v9)
  {
    (v9)[2](v9, v10, v7, a4);
  }

  if (a4)
  {
    [a4 instantiateServiceWithChannel:v10];
  }

  else
  {
    [v10 cancel];
  }
}

- (void)cancel
{
  connection = [(AXAuditService *)self connection];
  [connection cancel];

  [(AXAuditService *)self set_channelRestrictBlock:0];
}

- (void)resume
{
  connection = [(AXAuditService *)self connection];
  [connection resume];

  [(AXAuditService *)self requestHostAPIVersion];
}

- (void)setMaxConnectionEnqueue:(unint64_t)enqueue
{
  connection = [(AXAuditService *)self connection];
  [connection setMaximumEnqueueSize:enqueue];
}

- (void)requestHostAPIVersion
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__AXAuditService_requestHostAPIVersion__block_invoke;
  v6[3] = &unk_278BE3248;
  v6[4] = self;
  v3 = MEMORY[0x23EEEA2E0](v6, a2);
  v4 = [MEMORY[0x277D03668] messageWithSelector:sel_hostApiVersion objectArguments:0];
  if ([(AXAuditService *)self hostAPIVersion]<= 0)
  {
    connection = [(AXAuditService *)self connection];
    [connection sendControlAsync:v4 replyHandler:v3];
  }
}

void __39__AXAuditService_requestHostAPIVersion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__AXAuditService_requestHostAPIVersion__block_invoke_2;
  v6[3] = &unk_278BE2CA8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __39__AXAuditService_requestHostAPIVersion__block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) errorStatus])
  {
    v4 = [*(a1 + 32) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) setHostAPIVersion:{objc_msgSend(v4, "integerValue")}];
      v2 = [*(a1 + 40) hostAPIVersion];
      v3 = [*(a1 + 40) deviceSettingsManager];
      [v3 setHostAPIVersion:v2];
    }
  }
}

- (void)axAuditDeviceManager:(id)manager settingDidChange:(id)change
{
  changeCopy = change;
  v6 = +[AXAuditObjectTransportManager sharedManager];
  v9 = [v6 transportDictionaryForObject:changeCopy];

  v7 = [MEMORY[0x277D03668] messageWithSelector:sel_hostAccessibilitySettingDidChange_ objectArguments:{v9, 0}];
  connection = [(AXAuditService *)self connection];
  [connection sendControlAsync:v7 replyHandler:0];
}

- (void)auditer:(id)auditer didEncounterIssue:(id)issue
{
  issueCopy = issue;
  v6 = +[AXAuditObjectTransportManager sharedManager];
  v10 = [v6 transportDictionaryForObject:issueCopy];

  v7 = v10;
  if (v10)
  {
    v8 = [MEMORY[0x277D03668] messageWithSelector:sel_hostFoundAuditIssue_ objectArguments:{v10, 0}];
    connection = [(AXAuditService *)self connection];
    [connection sendControlAsync:v8 replyHandler:0];

    v7 = v10;
  }
}

- (void)auditer:(id)auditer didAppendLogWithMessage:(id)message
{
  v6 = [MEMORY[0x277D03668] messageWithSelector:sel_hostAppendAuditLog_ objectArguments:{message, 0}];
  connection = [(AXAuditService *)self connection];
  [connection sendControlAsync:v6 replyHandler:0];
}

- (void)auditer:(id)auditer didCompleteWithResults:(id)results
{
  resultsCopy = results;
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__AXAuditService_auditer_didCompleteWithResults___block_invoke;
  v8[3] = &unk_278BE2CA8;
  v9 = resultsCopy;
  selfCopy = self;
  v7 = resultsCopy;
  dispatch_async(v6, v8);
}

void __49__AXAuditService_auditer_didCompleteWithResults___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v24 + 1) + 8 * v7) allIssues];
        if ([v8 count])
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v21;
            do
            {
              v13 = 0;
              do
              {
                if (*v21 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                [v2 addObject:*(*(&v20 + 1) + 8 * v13++)];
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v11);
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v14 = +[AXAuditObjectTransportManager sharedManager];
  v15 = [v14 transportDictionaryForObject:v2];

  v16 = [MEMORY[0x277D03668] messageWithSelector:sel_hostDeviceDidCompleteAuditCategoriesWithAuditIssues_ objectArguments:{v15, 0}];
  v17 = [*(v19 + 40) connection];
  [v17 sendControlAsync:v16 replyHandler:0];

  [*(v19 + 40) setRunningAudit:0];
  [*(v19 + 40) setCurrentAuditer:0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)connectionInterrupted
{
  deviceSettingsManager = [(AXAuditService *)self deviceSettingsManager];
  [deviceSettingsManager restoreDeviceSettingsValues];

  [(AXAuditService *)self setApplicationStateNotificationsEnabled:0];
  [(AXAuditService *)self deviceInspectorSetMonitoredEventType:&unk_284FC4300];
  [(AXAuditService *)self deviceHighlightIssue:0];
  v4 = MEMORY[0x277CBEC28];

  [(AXAuditService *)self deviceInspectorShowVisuals:v4];
}

- (void)deviceSetAuditTargetPid:(id)pid
{
  if (pid)
  {
    longValue = [pid longValue];

    [(AXAuditService *)self setTargetPid:longValue];
  }
}

- (id)deviceCapabilities
{
  array = [MEMORY[0x277CBEB18] array];
  outCount = 0;
  v3 = &unk_284FCB1D0;
  v4 = protocol_copyMethodDescriptionList(v3, 1, 1, &outCount);
  if (v4)
  {
    v5 = v4;
    v6 = outCount;
    if (outCount)
    {
      v7 = 0;
      p_name = &v4->name;
      do
      {
        if (*p_name)
        {
          v9 = NSStringFromSelector(*p_name);
          [array addObject:v9];

          v6 = outCount;
        }

        ++v7;
        p_name += 2;
      }

      while (v7 < v6);
    }

    free(v5);
  }

  return array;
}

- (void)deviceSetAppMonitoringEnabled:(id)enabled
{
  if (enabled)
  {
    bOOLValue = [enabled BOOLValue];

    [(AXAuditService *)self setApplicationStateNotificationsEnabled:bOOLValue];
  }
}

- (id)deviceAllSupportedAuditTypes
{
  v2 = objc_opt_new();
  allSupportedAuditTypes = [v2 allSupportedAuditTypes];
  allObjects = [allSupportedAuditTypes allObjects];

  return allObjects;
}

- (void)deviceBeginAuditTypes:(id)types
{
  typesCopy = types;
  if (![(AXAuditService *)self runningAudit])
  {
    [(AXAuditService *)self setRunningAudit:1];
    [(AXAuditService *)self auditCategorySetup];
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__AXAuditService_deviceBeginAuditTypes___block_invoke;
    v6[3] = &unk_278BE2CA8;
    v6[4] = self;
    v7 = typesCopy;
    dispatch_async(v5, v6);
  }
}

void __40__AXAuditService_deviceBeginAuditTypes___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setDelegate:*(a1 + 32)];
  [v2 setTargetPid:{objc_msgSend(*(a1 + 32), "targetPid")}];
  [v2 setCategoryType:1];
  [*(a1 + 32) setCurrentAuditer:v2];
  [v2 startWithAuditTypes:*(a1 + 40)];
}

- (void)deviceInspectorSetMonitoredEventType:(id)type
{
  if (type)
  {
    integerValue = [type integerValue];
    if (integerValue)
    {
      v5 = 1;
    }

    else
    {
      v5 = integerValue & 2;
    }

    [(AXAuditService *)self setMonitoredEventType:v5];
  }
}

- (void)deviceInspectorEnable:(id)enable
{
  if (enable)
  {
    bOOLValue = [enable BOOLValue];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bOOLValue];
    [(AXAuditService *)self deviceInspectorSetMonitoredEventType:v5];
  }
}

- (id)deviceAccessibilitySettings
{
  v3 = +[AXAuditObjectTransportManager sharedManager];
  deviceSettingsManager = [(AXAuditService *)self deviceSettingsManager];
  settings = [deviceSettingsManager settings];
  v6 = [v3 transportDictionaryForObject:settings];

  return v6;
}

- (void)deviceResetToDefaultAccessibilitySettings
{
  deviceSettingsManager = [(AXAuditService *)self deviceSettingsManager];
  [deviceSettingsManager resetToDefaultAccessibilitySettings];
}

- (void)deviceUpdateAccessibilitySetting:(id)setting withValue:(id)value
{
  valueCopy = value;
  settingCopy = setting;
  v11 = +[AXAuditObjectTransportManager sharedManager];
  v8 = [v11 objectForTransportDictionary:settingCopy expectedClass:objc_opt_class()];

  v9 = [v11 objectForTransportDictionary:valueCopy expectedClass:objc_opt_class()];

  deviceSettingsManager = [(AXAuditService *)self deviceSettingsManager];
  [deviceSettingsManager updateSetting:v8 withNumberValue:v9];
}

- (void)deviceHighlightIssue:(id)issue
{
  issueCopy = issue;
  if ([issueCopy count])
  {
    v4 = +[AXAuditObjectTransportManager sharedManager];
    v5 = [v4 objectForTransportDictionary:issueCopy expectedClass:objc_opt_class()];

    auditElement = [v5 auditElement];
  }

  else
  {
    auditElement = 0;
  }

  [(AXAuditService *)self highlightElement:auditElement];
}

- (void)deviceHighlightIssues:(id)issues
{
  v22 = *MEMORY[0x277D85DE8];
  issuesCopy = issues;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = issuesCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 count])
        {
          v12 = +[AXAuditObjectTransportManager sharedManager];
          v13 = [v12 objectForTransportDictionary:v11 expectedClass:objc_opt_class()];

          auditElement = [v13 auditElement];

          if (auditElement)
          {
            auditElement2 = [v13 auditElement];
            [array addObject:auditElement2];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [(AXAuditService *)self highlightElements:array];
  v16 = *MEMORY[0x277D85DE8];
}

@end