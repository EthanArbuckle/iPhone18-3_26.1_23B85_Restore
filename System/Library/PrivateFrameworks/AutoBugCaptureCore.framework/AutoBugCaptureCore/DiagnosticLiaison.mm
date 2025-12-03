@interface DiagnosticLiaison
- (DiagnosticLiaison)init;
- (DiagnosticLiaisonDelegate)delegate;
- (id)basicSignatureFrom:(id)from;
- (id)caseSignatureForRemoteSignature:(id)signature groupIdentifier:(id)identifier;
- (id)homeKitAgent;
- (id)idsTransport;
- (id)remoteCasePayloadForIDSTransport:(id)transport groupID:(id)d;
- (void)checkForUIImpactScenarioForCase:(id)case;
- (void)dealloc;
- (void)messageReceivedFromIDS:(id)s;
- (void)messageWithIdentifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)messageWithIdentifierHasBeenDelivered:(id)delivered;
- (void)processPayloadFromIDSTransport:(id)transport incomingTime:(id)time;
- (void)processPayloadVersionOneFromIDSTransport:(id)transport incomingTime:(id)time;
- (void)processPayloadVersionTwoFromIDSTransport:(id)transport incomingTime:(id)time;
- (void)registerAdministrativeTransports;
- (void)registerAutoBugCaptureTransports:(id)transports;
- (void)remotelyDisableAutoBugCapture:(id)capture;
- (void)remotelyEnableAutoBugCapture:(id)capture;
- (void)remotelyTriggerSessionForSignature:(id)signature groupIdentifier:(id)identifier event:(id)event queue:(id)queue reply:(id)reply;
- (void)remotelyTriggerSessionWithSignature:(id)signature forDestinations:(id)destinations groupIdentifier:(id)identifier validFor:(double)for queue:(id)queue reply:(id)reply;
- (void)residentDevicesIDSIdentifiersWithReply:(id)reply;
- (void)sendPayloadToHomeKitRelays:(id)relays additionalPredicate:(id)predicate toEndpoint:(id)endpoint reply:(id)reply;
- (void)startRemotelyTriggeredSessionForSignature:(id)signature groupIdentifier:(id)identifier events:(id)events;
- (void)unregisterAllTransports:(id)transports;
- (void)unregisterAllTransportsSync;
@end

@implementation DiagnosticLiaison

- (DiagnosticLiaison)init
{
  v11.receiver = self;
  v11.super_class = DiagnosticLiaison;
  v2 = [(DiagnosticLiaison *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.diagnostic_liaison", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_allowRemoteTrigger = 1;
    v6 = +[SystemProperties sharedInstance];
    deviceClass = [v6 deviceClass];

    if (deviceClass == 7)
    {
      v2->_allowRemoteTrigger = 0;
    }

    v8 = +[PrimaryInterfaceUtils sharedInstance];
    interfaceUtils = v2->_interfaceUtils;
    v2->_interfaceUtils = v8;
  }

  return v2;
}

- (void)dealloc
{
  [(DiagnosticLiaison *)self unregisterAllTransportsSync];
  idsTransport = self->_idsTransport;
  self->_idsTransport = 0;

  homeKitAgent = self->_homeKitAgent;
  self->_homeKitAgent = 0;

  v5.receiver = self;
  v5.super_class = DiagnosticLiaison;
  [(DiagnosticLiaison *)&v5 dealloc];
}

- (id)homeKitAgent
{
  v13 = *MEMORY[0x277D85DE8];
  homeKitAgent = self->_homeKitAgent;
  if (!homeKitAgent)
  {
    idsTransport = [(DiagnosticLiaison *)self idsTransport];
    idsService = [idsTransport idsService];

    v6 = liaisonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = idsService;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "Creating HomeKitAgent with IDSService %@", &v11, 0xCu);
    }

    v7 = [[HomeKitAgent alloc] initWithIDSService:idsService];
    v8 = self->_homeKitAgent;
    self->_homeKitAgent = v7;

    homeKitAgent = self->_homeKitAgent;
  }

  v9 = *MEMORY[0x277D85DE8];

  return homeKitAgent;
}

- (id)idsTransport
{
  if (+[IDSCrossDeviceTransport isIDSEndpointEnabled]&& !self->_idsTransport)
  {
    v3 = objc_alloc_init(IDSCrossDeviceTransport);
    idsTransport = self->_idsTransport;
    self->_idsTransport = v3;
  }

  v5 = self->_idsTransport;

  return v5;
}

- (void)registerAdministrativeTransports
{
  v3 = +[SystemProperties sharedInstance];
  if ([v3 deviceClass] == 7)
  {
    v4 = +[ABCAdministrator sharedInstance];
    configurationManager = [v4 configurationManager];
    autoBugCaptureAvailable = [configurationManager autoBugCaptureAvailable];

    if (autoBugCaptureAvailable)
    {
      goto LABEL_4;
    }
  }

  v7 = +[ABCAdministrator sharedInstance];
  configurationManager2 = [v7 configurationManager];
  autoBugCaptureEnabled = [configurationManager2 autoBugCaptureEnabled];

  if (autoBugCaptureEnabled)
  {
LABEL_4:
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__DiagnosticLiaison_registerAdministrativeTransports__block_invoke;
    block[3] = &unk_278CEFE88;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __53__DiagnosticLiaison_registerAdministrativeTransports__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idsTransport];
  if (v2)
  {
    v3 = v2;
    [v2 registerIDSService];
    [v3 addDelegate:*(a1 + 32) endpoint:@"AutoBugCapture"];
    v2 = v3;
  }
}

- (void)registerAutoBugCaptureTransports:(id)transports
{
  transportsCopy = transports;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__DiagnosticLiaison_registerAutoBugCaptureTransports___block_invoke;
  v7[3] = &unk_278CEFEB0;
  v7[4] = self;
  v8 = transportsCopy;
  v6 = transportsCopy;
  dispatch_async(queue, v7);
}

void __54__DiagnosticLiaison_registerAutoBugCaptureTransports___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idsTransport];
  if (v2)
  {
    v3 = liaisonLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Registering with IDS service", v5, 2u);
    }

    [v2 registerIDSService];
    [v2 addDelegate:*(a1 + 32) endpoint:@"HomeKit"];
    [v2 addDelegate:*(a1 + 32) endpoint:@"Trigger"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

- (void)unregisterAllTransportsSync
{
  idsTransport = self->_idsTransport;
  if (idsTransport)
  {
    v4 = idsTransport;
    [(IDSCrossDeviceTransport *)v4 removeDelegate:self endpoint:@"AutoBugCapture"];
    [(IDSCrossDeviceTransport *)v4 removeDelegate:self endpoint:@"HomeKit"];
    [(IDSCrossDeviceTransport *)v4 removeDelegate:self endpoint:@"Trigger"];
    [(IDSCrossDeviceTransport *)v4 unregisterIDSService];

    v5 = liaisonLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Unregistered with IDS service", v6, 2u);
    }
  }
}

- (void)unregisterAllTransports:(id)transports
{
  transportsCopy = transports;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__DiagnosticLiaison_unregisterAllTransports___block_invoke;
  v7[3] = &unk_278CEFEB0;
  v7[4] = self;
  v8 = transportsCopy;
  v6 = transportsCopy;
  dispatch_async(queue, v7);
}

uint64_t __45__DiagnosticLiaison_unregisterAllTransports___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unregisterAllTransportsSync];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)caseSignatureForRemoteSignature:(id)signature groupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:signature];
  v7 = v6;
  if (identifierCopy)
  {
    [v6 setObject:identifierCopy forKeyedSubscript:@"groupID"];
  }

  return v7;
}

- (void)startRemotelyTriggeredSessionForSignature:(id)signature groupIdentifier:(id)identifier events:(id)events
{
  v16 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v9 = [(DiagnosticLiaison *)self caseSignatureForRemoteSignature:signature groupIdentifier:identifier];
  v10 = liaisonLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Ready to start remotely triggered case", &v14, 2u);
  }

  delegate = [(DiagnosticLiaison *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = liaisonLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "Starting a remotely triggered case with signature: %@", &v14, 0xCu);
    }

    [delegate requestSnapshotWithSignature:v9 flags:3 events:eventsCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)remotelyTriggerSessionWithSignature:(id)signature forDestinations:(id)destinations groupIdentifier:(id)identifier validFor:(double)for queue:(id)queue reply:(id)reply
{
  signatureCopy = signature;
  destinationsCopy = destinations;
  identifierCopy = identifier;
  queueCopy = queue;
  replyCopy = reply;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"remoteTrigger" forKeyedSubscript:@"type"];
  [dictionary setObject:@"IDSTransportSend" forKeyedSubscript:@"name"];
  queue = self->_queue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __110__DiagnosticLiaison_remotelyTriggerSessionWithSignature_forDestinations_groupIdentifier_validFor_queue_reply___block_invoke;
  v27[3] = &unk_278CEFF28;
  v28 = destinationsCopy;
  selfCopy = self;
  v30 = dictionary;
  v31 = signatureCopy;
  forCopy = for;
  v33 = queueCopy;
  v34 = replyCopy;
  v32 = identifierCopy;
  v21 = queueCopy;
  v22 = replyCopy;
  v23 = identifierCopy;
  v24 = signatureCopy;
  v25 = dictionary;
  v26 = destinationsCopy;
  dispatch_async(queue, v27);
}

void __110__DiagnosticLiaison_remotelyTriggerSessionWithSignature_forDestinations_groupIdentifier_validFor_queue_reply___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) idsTransport];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    [*(a1 + 48) setObject:v3 forKeyedSubscript:@"count"];

    [*(a1 + 48) setObject:@"Trigger" forKeyedSubscript:@"endpoint"];
    v4 = [*(a1 + 40) remoteCasePayloadForIDSTransport:*(a1 + 56) groupID:*(a1 + 64)];
    v5 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
    v6 = *(a1 + 88);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __110__DiagnosticLiaison_remotelyTriggerSessionWithSignature_forDestinations_groupIdentifier_validFor_queue_reply___block_invoke_2;
    v11[3] = &unk_278CEFF00;
    v14 = *(a1 + 80);
    v12 = *(a1 + 72);
    v13 = *(a1 + 48);
    [v2 sendMessage:v4 toIDSDevices:v5 toEndpoint:@"Trigger" validFor:v11 reply:v6];
  }

  else
  {
    if (!*(a1 + 80))
    {
      return;
    }

    v7 = *(a1 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __110__DiagnosticLiaison_remotelyTriggerSessionWithSignature_forDestinations_groupIdentifier_validFor_queue_reply___block_invoke_19;
    block[3] = &unk_278CEFEB0;
    v9 = *(a1 + 48);
    v10 = *(a1 + 80);
    dispatch_async(v7, block);

    v2 = v9;
  }
}

void __110__DiagnosticLiaison_remotelyTriggerSessionWithSignature_forDestinations_groupIdentifier_validFor_queue_reply___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __110__DiagnosticLiaison_remotelyTriggerSessionWithSignature_forDestinations_groupIdentifier_validFor_queue_reply___block_invoke_3;
    block[3] = &unk_278CEFED8;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    v15 = a2;
    v12 = v7;
    v13 = v8;
    v14 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

uint64_t __110__DiagnosticLiaison_remotelyTriggerSessionWithSignature_forDestinations_groupIdentifier_validFor_queue_reply___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v4 = [v2 numberWithDouble:?];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"timestamp"];

  v5 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    [v5 setObject:@"In Progress" forKeyedSubscript:@"status"];
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"IDSMessageIdentifier"];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"IDSMessageIdentifier"];
  }

  else
  {
    [v5 setObject:@"failure" forKeyedSubscript:@"result"];
    [*(a1 + 32) setObject:@"Finished" forKeyedSubscript:@"status"];
    if (*(a1 + 48))
    {
      v7 = liaisonLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Failed to send remote IDS trigger message with error %@", &v14, 0xCu);
      }

      [*(a1 + 32) setObject:*(a1 + 48) forKeyedSubscript:@"errorObj"];
      v9 = [*(a1 + 48) localizedDescription];
      [*(a1 + 32) setObject:v9 forKeyedSubscript:@"error"];
    }
  }

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  result = (*(*(a1 + 56) + 16))();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __110__DiagnosticLiaison_remotelyTriggerSessionWithSignature_forDestinations_groupIdentifier_validFor_queue_reply___block_invoke_19(uint64_t a1)
{
  v2 = liaisonLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "No IDS destinations to send remote trigger.", v8, 2u);
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v5 = [v3 numberWithDouble:?];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"timestamp"];

  [*(a1 + 32) setObject:@"failure" forKeyedSubscript:@"result"];
  [*(a1 + 32) setObject:@"Cancelled" forKeyedSubscript:@"status"];
  [*(a1 + 32) setObject:@"No valid destinations" forKeyedSubscript:@"error"];
  v6 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (void)remotelyTriggerSessionForSignature:(id)signature groupIdentifier:(id)identifier event:(id)event queue:(id)queue reply:(id)reply
{
  signatureCopy = signature;
  identifierCopy = identifier;
  queueCopy = queue;
  replyCopy = reply;
  if (event)
  {
    [MEMORY[0x277CBEB38] dictionaryWithDictionary:event];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v16 = ;
  [v16 setObject:@"remoteTrigger" forKeyedSubscript:@"type"];
  [v16 setObject:@"failure" forKeyedSubscript:@"result"];
  v17 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v19 = [v17 numberWithDouble:?];
  [v16 setObject:v19 forKeyedSubscript:@"timestamp"];

  queue = self->_queue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __90__DiagnosticLiaison_remotelyTriggerSessionForSignature_groupIdentifier_event_queue_reply___block_invoke;
  v26[3] = &unk_278CEFFC8;
  v26[4] = self;
  v27 = v16;
  v28 = signatureCopy;
  v29 = identifierCopy;
  v30 = queueCopy;
  v31 = replyCopy;
  v21 = queueCopy;
  v22 = identifierCopy;
  v23 = signatureCopy;
  v24 = replyCopy;
  v25 = v16;
  dispatch_async(queue, v26);
}

void __90__DiagnosticLiaison_remotelyTriggerSessionForSignature_groupIdentifier_event_queue_reply___block_invoke(id *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v15 = +[SystemProperties sharedInstance];
    v16 = [v15 deviceClass];

    v17 = liaisonLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v43) = v16;
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEFAULT, "Remotely triggering sessions is not supported on this device (%d)", buf, 8u);
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported device class (%d)", v16];
    [a1[5] setObject:v18 forKeyedSubscript:@"error"];

    goto LABEL_22;
  }

  if (![a1[6] count])
  {
    v19 = liaisonLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[6];
      *buf = 138412290;
      v43 = v20;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "Remote trigger requested for a case, but a valid signature was not provided. %@", buf, 0xCu);
    }

    v21 = a1[5];
    v22 = @"Empty Signature";
    goto LABEL_21;
  }

  v2 = [a1[7] length];
  v3 = liaisonLogHandle();
  v4 = v3;
  if (!v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v23 = a1[6];
      *buf = 138412290;
      v43 = v23;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "Remote trigger requested for a case, but a valid group identifier was not provided. %@", buf, 0xCu);
    }

    v21 = a1[5];
    v22 = @"Missing group identifier";
LABEL_21:
    [v21 setObject:v22 forKeyedSubscript:@"error"];
LABEL_22:
    v24 = a1[9];
    if (v24)
    {
      v24[2](v24, 0, a1[5]);
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[6];
    v5 = a1[7];
    *buf = 138412546;
    v43 = v5;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "Remotely triggering a session for group identifier %@ and signature %@", buf, 0x16u);
  }

  v7 = [a1[6] objectForKeyedSubscript:@"domain"];
  v8 = [v7 isEqualToString:@"HomeKit"];

  if (v8)
  {
    v9 = [*(a1[4] + 5) idsService];

    if (v9)
    {
      v10 = liaisonLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = a1[6];
        *buf = 138412290;
        v43 = v11;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Cannot use IDS transport for signature %@", buf, 0xCu);
      }

      [a1[5] setObject:@"remoteTrigger" forKeyedSubscript:@"type"];
      [a1[5] setObject:@"IDS transport not ready" forKeyedSubscript:@"error"];
      v12 = a1[9];
      if (v12)
      {
        v13 = a1[8];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__DiagnosticLiaison_remotelyTriggerSessionForSignature_groupIdentifier_event_queue_reply___block_invoke_39;
        block[3] = &unk_278CEFF50;
        v41 = v12;
        v40 = a1[5];
        dispatch_async(v13, block);

        v14 = v41;
LABEL_29:
      }
    }

    else
    {
      v30 = [a1[4] remoteCasePayloadForIDSTransport:a1[6] groupID:a1[7]];
      v31 = liaisonLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_INFO, "Selecting IDS transport for HomeKit cases", buf, 2u);
      }

      v32 = a1[4];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __90__DiagnosticLiaison_remotelyTriggerSessionForSignature_groupIdentifier_event_queue_reply___block_invoke_40;
      v36[3] = &unk_278CEFFA0;
      v38 = a1[9];
      v37 = a1[8];
      [v32 sendPayloadToHomeKitRelays:v30 additionalPredicate:0 toEndpoint:@"HomeKit" reply:v36];
    }
  }

  else
  {
    v26 = liaisonLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = a1[6];
      *buf = 138412290;
      v43 = v27;
      _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_ERROR, "Unable to determine appropriate transport for signature %@", buf, 0xCu);
    }

    [a1[5] setObject:@"No appropriate transport for signature" forKeyedSubscript:@"error"];
    v28 = a1[9];
    if (v28)
    {
      v29 = a1[8];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __90__DiagnosticLiaison_remotelyTriggerSessionForSignature_groupIdentifier_event_queue_reply___block_invoke_45;
      v33[3] = &unk_278CEFF50;
      v35 = v28;
      v34 = a1[5];
      dispatch_async(v29, v33);

      v14 = v35;
      goto LABEL_29;
    }
  }

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];
}

void __90__DiagnosticLiaison_remotelyTriggerSessionForSignature_groupIdentifier_event_queue_reply___block_invoke_40(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__DiagnosticLiaison_remotelyTriggerSessionForSignature_groupIdentifier_event_queue_reply___block_invoke_2;
    block[3] = &unk_278CEFF78;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)sendPayloadToHomeKitRelays:(id)relays additionalPredicate:(id)predicate toEndpoint:(id)endpoint reply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  relaysCopy = relays;
  predicateCopy = predicate;
  endpointCopy = endpoint;
  replyCopy = reply;
  if (!self->_allowRemoteTrigger)
  {
    v16 = liaisonLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = +[SystemProperties sharedInstance];
      *buf = 67109120;
      LODWORD(v36) = [v17 deviceClass];
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "Sending remote ABC messages are not supported on this device (%d)", buf, 8u);
    }

    goto LABEL_14;
  }

  if (![endpointCopy length])
  {
    v16 = liaisonLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Missing or invalid endpoint";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!relaysCopy || ![relaysCopy count])
  {
    v16 = liaisonLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Missing required message payload";
LABEL_13:
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, v18, buf, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  self->_homekitRelayTimedOut = 0;
  homekitRelayTimer = self->_homekitRelayTimer;
  if (homekitRelayTimer)
  {
    v15 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(homekitRelayTimer, v15, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  }

  else
  {
    queue = [(DiagnosticLiaison *)self queue];
    v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

    v22 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __85__DiagnosticLiaison_sendPayloadToHomeKitRelays_additionalPredicate_toEndpoint_reply___block_invoke;
    handler[3] = &unk_278CEFFF0;
    handler[4] = self;
    v33 = endpointCopy;
    v34 = replyCopy;
    dispatch_source_set_event_handler(v21, handler);
    v23 = self->_homekitRelayTimer;
    self->_homekitRelayTimer = v21;
    v24 = v21;

    dispatch_resume(v24);
  }

  v25 = liaisonLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = predicateCopy;
    _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_INFO, "Looking up IDS identifiers for HomeKit relay devices (additional predicate: %@)", buf, 0xCu);
  }

  homeKitAgent = [(DiagnosticLiaison *)self homeKitAgent];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __85__DiagnosticLiaison_sendPayloadToHomeKitRelays_additionalPredicate_toEndpoint_reply___block_invoke_49;
  v27[3] = &unk_278CF0068;
  v27[4] = self;
  v28 = predicateCopy;
  v29 = relaysCopy;
  v30 = endpointCopy;
  v31 = replyCopy;
  [homeKitAgent fetchResidentDevicesIDSIdentifiersWithReply:v27];

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __85__DiagnosticLiaison_sendPayloadToHomeKitRelays_additionalPredicate_toEndpoint_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  *(a1[4] + 24) = 1;
  v4 = liaisonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "Timed out waiting for all resident devices IDS Identifiers", v6, 2u);
  }

  [0 setObject:@"remoteTrigger" forKeyedSubscript:@"type"];
  [0 setObject:a1[5] forKeyedSubscript:@"endpoint"];
  [0 setObject:@"failure" forKeyedSubscript:@"result"];
  [0 setObject:@"Timed out looking up HomeKit relay IDS Identifiers" forKeyedSubscript:@"error"];
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __85__DiagnosticLiaison_sendPayloadToHomeKitRelays_additionalPredicate_toEndpoint_reply___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[2])
  {
    dispatch_source_cancel(v4[2]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    v4 = *(a1 + 32);
  }

  v7 = [(dispatch_source_t *)v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__DiagnosticLiaison_sendPayloadToHomeKitRelays_additionalPredicate_toEndpoint_reply___block_invoke_2;
  block[3] = &unk_278CF0040;
  v15 = v3;
  v13 = *(a1 + 32);
  v8 = *(&v13 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v16 = v13;
  v17 = v11;
  v18 = *(a1 + 64);
  v12 = v3;
  dispatch_async(v7, block);
}

void __85__DiagnosticLiaison_sendPayloadToHomeKitRelays_additionalPredicate_toEndpoint_reply___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = liaisonLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEBUG, "All IDS identifiers = %@", buf, 0xCu);
  }

  if (*(*(a1 + 40) + 24))
  {
    v4 = liaisonLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "Relay service reply came in after timeout. Dropping";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
LABEL_11:
      _os_log_impl(&dword_241804000, v6, v7, v5, buf, 2u);
    }
  }

  else if ([*(a1 + 32) count])
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uniqueID IN %@", *(a1 + 32)];
    v4 = v8;
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = MEMORY[0x277CCA920];
      v22[0] = v8;
      v22[1] = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      v12 = [v10 andPredicateWithSubpredicates:v11];
    }

    else
    {
      v12 = v8;
    }

    v13 = [*(a1 + 40) idsTransport];
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __85__DiagnosticLiaison_sendPayloadToHomeKitRelays_additionalPredicate_toEndpoint_reply___block_invoke_56;
    v17[3] = &unk_278CF0018;
    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    v21 = *(a1 + 72);
    v20 = *(a1 + 64);
    [v13 sendMessage:v14 toIDSDevicesMatching:v12 toEndpoint:v15 reply:v17];
  }

  else
  {
    v4 = liaisonLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "No IDS identifiers for HomeKit relay devices found.";
      v6 = v4;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __85__DiagnosticLiaison_sendPayloadToHomeKitRelays_additionalPredicate_toEndpoint_reply___block_invoke_56(uint64_t a1, int a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [a3 objectForKeyedSubscript:@"count"];
  v9 = liaisonLogHandle();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 unsignedLongValue];
      v12 = [*(a1 + 32) count];
      v22 = 134218240;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "Successfully sent payload to %ld device(s) (%lu total HomeKit relay devices)", &v22, 0x16u);
    }

    v13 = liaisonLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v22 = 138412290;
      v23 = v14;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Message payload: %@", &v22, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 unsignedLongValue];
      v17 = [*(a1 + 32) count];
      v22 = 134218498;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Failed to send payload to %ld devices(s) (%lu total HomeKit relay devices): %@", &v22, 0x20u);
    }

    v18 = liaisonLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 40);
      v22 = 138412290;
      v23 = v19;
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEBUG, "Message payload: %@", &v22, 0xCu);
    }

    if (v7)
    {
      v15 = [v7 localizedDescription];
    }

    else
    {
      v15 = @"No matching IDS devices.";
    }
  }

  if (*(a1 + 56))
  {
    [0 setObject:@"remoteTrigger" forKeyedSubscript:@"type"];
    [0 setObject:@"IDSTransportSend" forKeyedSubscript:@"name"];
    [0 setObject:*(a1 + 48) forKeyedSubscript:@"endpoint"];
    v20 = kSymptomDiagnosticEventResultSuccess;
    if (!a2)
    {
      v20 = kSymptomDiagnosticEventResultFailure;
    }

    [0 setObject:*v20 forKeyedSubscript:@"result"];
    [0 setObject:v8 forKeyedSubscript:@"count"];
    [0 setObject:v15 forKeyedSubscript:@"error"];
    (*(*(a1 + 56) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)remotelyEnableAutoBugCapture:(id)capture
{
  v14 = *MEMORY[0x277D85DE8];
  captureCopy = capture;
  if (self->_allowRemoteTrigger)
  {
    idsTransport = [(DiagnosticLiaison *)self idsTransport];

    if (idsTransport)
    {
      v6 = [(DiagnosticLiaison *)self abcPayloadForIDSTransport:1];
      v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelIdentifier BEGINSWITH 'AudioAccessory'"];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __50__DiagnosticLiaison_remotelyEnableAutoBugCapture___block_invoke;
      v10[3] = &unk_278CF0090;
      v11 = captureCopy;
      [(DiagnosticLiaison *)self sendPayloadToHomeKitRelays:v6 additionalPredicate:v7 toEndpoint:@"AutoBugCapture" reply:v10];
    }

    else
    {
      v6 = liaisonLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "IDS transport is not available. Cannot remotely enable ABC.", buf, 2u);
      }
    }
  }

  else
  {
    v6 = liaisonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[SystemProperties sharedInstance];
      *buf = 67109120;
      deviceClass = [v8 deviceClass];
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Sending remote ABC toggle is not supported on this device (%d)", buf, 8u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __50__DiagnosticLiaison_remotelyEnableAutoBugCapture___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = liaisonLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Success in sending remote ABC enable toggle", v4, 2u);
    }

    result = *(v2 + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)remotelyDisableAutoBugCapture:(id)capture
{
  v14 = *MEMORY[0x277D85DE8];
  captureCopy = capture;
  if (self->_allowRemoteTrigger)
  {
    idsTransport = [(DiagnosticLiaison *)self idsTransport];

    if (idsTransport)
    {
      v6 = [(DiagnosticLiaison *)self abcPayloadForIDSTransport:0];
      v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelIdentifier BEGINSWITH 'AudioAccessory'"];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__DiagnosticLiaison_remotelyDisableAutoBugCapture___block_invoke;
      v10[3] = &unk_278CF0090;
      v11 = captureCopy;
      [(DiagnosticLiaison *)self sendPayloadToHomeKitRelays:v6 additionalPredicate:v7 toEndpoint:@"AutoBugCapture" reply:v10];
    }

    else
    {
      v6 = liaisonLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "IDS transport is not available. Cannot remotely disable ABC.", buf, 2u);
      }
    }
  }

  else
  {
    v6 = liaisonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[SystemProperties sharedInstance];
      *buf = 67109120;
      deviceClass = [v8 deviceClass];
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "sending remote ABC toggle is not supported on this device (%d)", buf, 8u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __51__DiagnosticLiaison_remotelyDisableAutoBugCapture___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = liaisonLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Success in sending remote ABC enable toggle", v4, 2u);
    }

    result = *(v2 + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)residentDevicesIDSIdentifiersWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    homeKitAgent = [(DiagnosticLiaison *)self homeKitAgent];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__DiagnosticLiaison_residentDevicesIDSIdentifiersWithReply___block_invoke;
    v6[3] = &unk_278CF00B8;
    v7 = replyCopy;
    [homeKitAgent fetchResidentDevicesIDSIdentifiersWithReply:v6];
  }
}

- (void)messageReceivedFromIDS:(id)s
{
  v15 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v5 = liaisonLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = sCopy;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Received message from IDS transport: %@", buf, 0xCu);
  }

  if (sCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__DiagnosticLiaison_messageReceivedFromIDS___block_invoke;
    block[3] = &unk_278CF00E0;
    block[4] = self;
    v11 = sCopy;
    v12 = date;
    v8 = date;
    dispatch_async(queue, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)messageWithIdentifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  delegate = [(DiagnosticLiaison *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"remoteTrigger" forKeyedSubscript:@"type"];
    [dictionary setObject:@"IDSTransportSend" forKeyedSubscript:@"name"];
    [dictionary setObject:@"Finished" forKeyedSubscript:@"status"];
    v11 = kSymptomDiagnosticEventResultSuccess;
    if (!successCopy)
    {
      v11 = kSymptomDiagnosticEventResultFailure;
    }

    [dictionary setObject:*v11 forKeyedSubscript:@"result"];
    v12 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v14 = [v12 numberWithDouble:?];
    [dictionary setObject:v14 forKeyedSubscript:@"timestamp"];

    [dictionary setObject:identifierCopy forKeyedSubscript:@"IDSMessageIdentifier"];
    if (errorCopy)
    {
      [dictionary setObject:errorCopy forKeyedSubscript:@"errorObj"];
    }

    [delegate remoteTriggerDeliveryUpdateEvent:dictionary];
  }
}

- (void)messageWithIdentifierHasBeenDelivered:(id)delivered
{
  deliveredCopy = delivered;
  delegate = [(DiagnosticLiaison *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"remoteTrigger" forKeyedSubscript:@"type"];
    [dictionary setObject:@"IDSTransportDelivered" forKeyedSubscript:@"name"];
    v6 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
    [dictionary setObject:v8 forKeyedSubscript:@"timestamp"];

    [dictionary setObject:deliveredCopy forKeyedSubscript:@"IDSMessageIdentifier"];
    [delegate remoteTriggerDeliveryUpdateEvent:dictionary];
  }
}

- (id)basicSignatureFrom:(id)from
{
  fromCopy = from;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [fromCopy objectForKeyedSubscript:@"domain"];

  if (v5)
  {
    v6 = [fromCopy objectForKeyedSubscript:@"domain"];
    [dictionary setObject:v6 forKeyedSubscript:@"domain"];
  }

  v7 = [fromCopy objectForKeyedSubscript:@"type"];

  if (v7)
  {
    v8 = [fromCopy objectForKeyedSubscript:@"type"];
    [dictionary setObject:v8 forKeyedSubscript:@"type"];
  }

  v9 = [fromCopy objectForKeyedSubscript:@"subtype"];

  if (v9)
  {
    v10 = [fromCopy objectForKeyedSubscript:@"subtype"];
    [dictionary setObject:v10 forKeyedSubscript:@"subtype"];
  }

  v11 = [fromCopy objectForKeyedSubscript:@"additional"];

  if (v11)
  {
    v12 = [fromCopy objectForKeyedSubscript:@"additional"];
    [dictionary setObject:v12 forKeyedSubscript:@"additional"];
  }

  v13 = [fromCopy objectForKeyedSubscript:@"detected"];

  if (v13)
  {
    v14 = [fromCopy objectForKeyedSubscript:@"detected"];
    [dictionary setObject:v14 forKeyedSubscript:@"detected"];
  }

  v15 = [fromCopy objectForKeyedSubscript:@"effective"];

  if (v15)
  {
    v16 = [fromCopy objectForKeyedSubscript:@"effective"];
    [dictionary setObject:v16 forKeyedSubscript:@"effective"];
  }

  v17 = [fromCopy objectForKeyedSubscript:@"threshval"];

  if (v17)
  {
    v18 = [fromCopy objectForKeyedSubscript:@"threshval"];
    [dictionary setObject:v18 forKeyedSubscript:@"threshval"];
  }

  return dictionary;
}

- (id)remoteCasePayloadForIDSTransport:(id)transport groupID:(id)d
{
  transportCopy = transport;
  dCopy = d;
  if ([transportCopy count] || objc_msgSend(dCopy, "length"))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"remoteCase" forKeyedSubscript:@"type"];
    v9 = [(DiagnosticLiaison *)self basicSignatureFrom:transportCopy];
    [dictionary setObject:v9 forKeyedSubscript:@"sig"];

    [dictionary setObject:dCopy forKeyedSubscript:@"gid"];
    date = [MEMORY[0x277CBEAA8] date];
    [dictionary setObject:date forKeyedSubscript:@"time"];

    [dictionary setObject:&unk_28537A008 forKeyedSubscript:@"vers"];
  }

  else
  {
    v12 = liaisonLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "IDS payload requires a signature dictionary and group identifier.", v13, 2u);
    }

    dictionary = 0;
  }

  return dictionary;
}

- (void)processPayloadFromIDSTransport:(id)transport incomingTime:(id)time
{
  transportCopy = transport;
  timeCopy = time;
  v7 = [transportCopy objectForKeyedSubscript:@"vers"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isEqual:&unk_28537A020])
  {
    [(DiagnosticLiaison *)self processPayloadVersionOneFromIDSTransport:transportCopy incomingTime:timeCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isEqual:&unk_28537A008])
    {
      [(DiagnosticLiaison *)self processPayloadVersionTwoFromIDSTransport:transportCopy incomingTime:timeCopy];
    }
  }
}

- (void)processPayloadVersionOneFromIDSTransport:(id)transport incomingTime:(id)time
{
  v46 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  timeCopy = time;
  if (!timeCopy)
  {
    timeCopy = [MEMORY[0x277CBEAA8] date];
  }

  v7 = [(__CFString *)transportCopy objectForKeyedSubscript:@"sig"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v9 = liaisonLogHandle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v10)
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412802;
        v41 = v7;
        v42 = 2112;
        v43 = v12;
        v44 = 2112;
        v45 = @"sig";
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Found unexpected object %@ (%@) for key %@ in IDS payload.", buf, 0x20u);
      }
    }

    else if (v10)
    {
      *buf = 138412290;
      v41 = @"sig";
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Missing object for key %@ in IDS payload.", buf, 0xCu);
    }

    v8 = 0;
  }

  v13 = [(__CFString *)transportCopy objectForKeyedSubscript:@"time"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v15 = liaisonLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v16)
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138412802;
        v41 = v13;
        v42 = 2112;
        v43 = v18;
        v44 = 2112;
        v45 = @"time";
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Found unexpected object %@ (%@) for key %@ in IDS payload.", buf, 0x20u);
      }
    }

    else if (v16)
    {
      *buf = 138412290;
      v41 = @"sig";
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Missing object for key %@ in IDS payload.", buf, 0xCu);
    }

    v14 = 0;
  }

  v19 = [(__CFString *)transportCopy objectForKeyedSubscript:@"gid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v21 = liaisonLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v19)
    {
      if (v22)
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138412802;
        v41 = v19;
        v42 = 2112;
        v43 = v24;
        v44 = 2112;
        v45 = @"gid";
        _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_INFO, "Found unexpected object %@ (%@) for key %@ in IDS payload.", buf, 0x20u);
      }
    }

    else if (v22)
    {
      *buf = 138412290;
      v41 = @"gid";
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_INFO, "Missing object for key %@ in IDS payload.", buf, 0xCu);
    }

    v20 = 0;
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  if ([(__CFString *)v8 count]&& [(__CFString *)v20 length])
  {
    v33 = v7;
    v38[0] = @"type";
    v38[1] = @"name";
    v39[0] = @"remoteTrigger";
    v39[1] = @"IDSTransportSend";
    v38[2] = @"timestamp";
    v25 = MEMORY[0x277CCABB0];
    [(__CFString *)v14 timeIntervalSince1970];
    v26 = [v25 numberWithDouble:?];
    v39[2] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];

    v36[0] = @"type";
    v36[1] = @"name";
    v37[0] = @"remoteTrigger";
    v37[1] = @"IDSTransportReceive";
    v36[2] = @"timestamp";
    v28 = MEMORY[0x277CCABB0];
    [timeCopy timeIntervalSince1970];
    v29 = [v28 numberWithDouble:?];
    v37[2] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

    v35[0] = v27;
    v35[1] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    [(DiagnosticLiaison *)self startRemotelyTriggeredSessionForSignature:v8 groupIdentifier:v20 events:v31];

    v7 = v33;
    goto LABEL_33;
  }

LABEL_31:
  v27 = liaisonLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v41 = transportCopy;
    _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_ERROR, "Received a cross device trigger message over IDS that was malformed: %@", buf, 0xCu);
  }

LABEL_33:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)processPayloadVersionTwoFromIDSTransport:(id)transport incomingTime:(id)time
{
  v20 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  timeCopy = time;
  v8 = [transportCopy objectForKeyedSubscript:@"type"];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_13;
  }

  if ([(__CFString *)v8 isEqualToString:@"remoteCase"])
  {
    [(DiagnosticLiaison *)self processPayloadVersionOneFromIDSTransport:transportCopy incomingTime:timeCopy];
    goto LABEL_16;
  }

  if ([(__CFString *)v9 isEqualToString:@"AutoBugCapture"])
  {
    v10 = [transportCopy objectForKeyedSubscript:@"UserConsent"];
    bOOLValue = [v10 BOOLValue];

    v12 = liaisonLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = @"NO";
      if (bOOLValue)
      {
        v13 = @"YES";
      }

      v18 = 138412290;
      v19 = v13;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Received an ABC IDS message with UserConsent = %@", &v18, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    if (bOOLValue)
    {
      v15 = @"com.apple.autobugcapture.UserConsentYES";
    }

    else
    {
      v15 = @"com.apple.autobugcapture.UserConsentNO";
    }

    CFNotificationCenterPostNotification(DarwinNotifyCenter, v15, 0, 0, 4u);
  }

  else
  {
LABEL_13:
    v16 = liaisonLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "Received an IDS message with unknown type: %@", &v18, 0xCu);
    }
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)checkForUIImpactScenarioForCase:(id)case
{
  v23 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  interfaceBecamePrimaryDate = [(PrimaryInterfaceUtils *)self->_interfaceUtils interfaceBecamePrimaryDate];
  if (interfaceBecamePrimaryDate)
  {
    if ([(PrimaryInterfaceUtils *)self->_interfaceUtils primaryInterfaceType]== 1)
    {
      [interfaceBecamePrimaryDate timeIntervalSinceNow];
      if (v6 > -180.0)
      {
        v7 = -v6;
        v8 = liaisonLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 134217984;
          v22 = v7;
          _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "UIPerformance case seen within TH Period (%f since primary interface change)", &v21, 0xCu);
        }

        symptom_framework_init();
        symptom_new();
        symptom_set_qualifier();
        [(PrimaryInterfaceUtils *)self->_interfaceUtils primaryInterfaceType];
        symptom_set_qualifier();
        signature = [caseCopy signature];
        v10 = [signature objectForKeyedSubscript:@"detected"];

        uTF8String = [v10 UTF8String];
        if (uTF8String)
        {
          strlen(uTF8String);
          symptom_set_additional_qualifier();
        }

        signature2 = [caseCopy signature];
        v13 = [signature2 objectForKeyedSubscript:@"subtype"];

        uTF8String2 = [v13 UTF8String];
        if (uTF8String2)
        {
          strlen(uTF8String2);
          symptom_set_additional_qualifier();
        }

        deParametersFromPayloads = [caseCopy deParametersFromPayloads];
        v16 = deParametersFromPayloads;
        if (deParametersFromPayloads)
        {
          v17 = [deParametersFromPayloads objectForKeyedSubscript:@"com.apple.DiagnosticExtensions.tailspin"];
          if ([v17 count])
          {
            Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], v16, kCFPropertyListXMLFormat_v1_0, 0, 0);
            if (Data)
            {
              v19 = Data;
              CFDataGetLength(Data);
              CFDataGetBytePtr(v19);
              symptom_set_additional_qualifier();
              CFRelease(v19);
            }
          }
        }

        symptom_send();
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (DiagnosticLiaisonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end