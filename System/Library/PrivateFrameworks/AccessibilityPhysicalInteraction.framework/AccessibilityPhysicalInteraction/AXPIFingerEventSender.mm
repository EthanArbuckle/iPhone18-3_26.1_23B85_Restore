@interface AXPIFingerEventSender
- (AXPIFingerEventSender)initWithDisplayUUID:(id)d;
- (id)_assignFingerIdentifiersToTouches:(id)touches;
- (void)_sendHandEvent:(unsigned int)event touchesByFingerIdentifier:(id)identifier;
- (void)dealloc;
- (void)performCancelWithTouches:(id)touches;
- (void)performDownWithTouches:(id)touches;
- (void)performMoveWithTouches:(id)touches;
- (void)performUpWithTouches:(id)touches;
@end

@implementation AXPIFingerEventSender

- (AXPIFingerEventSender)initWithDisplayUUID:(id)d
{
  v31[9] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v26.receiver = self;
  v26.super_class = AXPIFingerEventSender;
  v6 = [(AXPIFingerEventSender *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayUUID, d);
    v8 = dispatch_queue_create("AXPIFingerEventSendingQueue", 0);
    eventSendingQueue = v7->_eventSendingQueue;
    v7->_eventSendingQueue = v8;

    [(AXPIFingerEventSender *)v7 setSenderID:0x8000000817319372];
    v10 = objc_alloc_init(MEMORY[0x277D0EF08]);
    eventService = v7->_eventService;
    v7->_eventService = v10;

    v31[0] = @"AXPIFingerTransport";
    v30[0] = @"Transport";
    v30[1] = @"PrimaryUsagePage";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:13];
    v31[1] = v12;
    v30[2] = @"PrimaryUsage";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:4];
    v31[2] = v13;
    v31[3] = MEMORY[0x277CBEC38];
    v30[3] = @"Authenticated";
    v30[4] = @"Built-In";
    v31[4] = MEMORY[0x277CBEC38];
    v31[5] = MEMORY[0x277CBEC38];
    v30[5] = @"DisplayIntegrated";
    v30[6] = @"VendorID";
    v31[6] = &unk_284FC7868;
    v31[7] = &unk_284FC7868;
    v30[7] = @"ProductID";
    v30[8] = @"DeviceUsagePairs";
    v27[0] = @"DeviceUsagePage";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:13];
    v27[1] = @"DeviceUsage";
    v28[0] = v14;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:4];
    v28[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v29 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v31[8] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:9];

    if (dCopy)
    {
      v19 = [(NSDictionary *)v18 mutableCopy];
      [(NSDictionary *)v19 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Built-In"];
      [(NSDictionary *)v19 setObject:dCopy forKeyedSubscript:@"displayUUID"];

      v18 = v19;
    }

    properties = v7->_properties;
    v7->_properties = v18;
    v21 = v18;

    v22 = v7->_eventSendingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__AXPIFingerEventSender_initWithDisplayUUID___block_invoke;
    block[3] = &unk_278BE62B8;
    v25 = v7;
    dispatch_sync(v22, block);
  }

  return v7;
}

uint64_t __45__AXPIFingerEventSender_initWithDisplayUUID___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setDelegate:?];
  [*(*(a1 + 32) + 32) setCancelHandler:&__block_literal_global];
  [*(*(a1 + 32) + 32) setDispatchQueue:*(*(a1 + 32) + 48)];
  v2 = *(*(a1 + 32) + 32);

  return [v2 activate];
}

- (void)dealloc
{
  eventSendingQueue = self->_eventSendingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__AXPIFingerEventSender_dealloc__block_invoke;
  block[3] = &unk_278BE62B8;
  block[4] = self;
  dispatch_sync(eventSendingQueue, block);
  v4.receiver = self;
  v4.super_class = AXPIFingerEventSender;
  [(AXPIFingerEventSender *)&v4 dealloc];
}

void __32__AXPIFingerEventSender_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) cancel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (void)performDownWithTouches:(id)touches
{
  v4 = [(AXPIFingerEventSender *)self _assignFingerIdentifiersToTouches:touches];
  [(AXPIFingerEventSender *)self performDownWithTouchesByFingerIdentifier:v4];
}

- (void)performMoveWithTouches:(id)touches
{
  v4 = [(AXPIFingerEventSender *)self _assignFingerIdentifiersToTouches:touches];
  [(AXPIFingerEventSender *)self performMoveWithTouchesByFingerIdentifier:v4];
}

- (void)performUpWithTouches:(id)touches
{
  v4 = [(AXPIFingerEventSender *)self _assignFingerIdentifiersToTouches:touches];
  [(AXPIFingerEventSender *)self performUpWithTouchesByFingerIdentifier:v4];
}

- (void)performCancelWithTouches:(id)touches
{
  v4 = [(AXPIFingerEventSender *)self _assignFingerIdentifiersToTouches:touches];
  [(AXPIFingerEventSender *)self performCancelWithTouchesByFingerIdentifier:v4];
}

- (void)_sendHandEvent:(unsigned int)event touchesByFingerIdentifier:(id)identifier
{
  v4 = *&event;
  identifierCopy = identifier;
  if ([identifierCopy count])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = 0;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    openSessions = [mEMORY[0x277D75128] openSessions];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__AXPIFingerEventSender__sendHandEvent_touchesByFingerIdentifier___block_invoke;
    v24[3] = &unk_278BE62E0;
    v24[4] = self;
    v24[5] = &v25;
    [openSessions enumerateObjectsUsingBlock:v24];

    v9 = v26[5];
    if (!v9)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      v11 = v26[5];
      v26[5] = mainScreen;

      v9 = v26[5];
    }

    v12 = identifierCopy;
    v13 = v9;
    v14 = [v12 count];
    if (v4 == 8 || v14)
    {
      v15 = [MEMORY[0x277CE7D80] touchRepresentationWithHandType:v4 location:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      [v15 setAdditionalFlags:{objc_msgSend(v15, "additionalFlags")}];
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy_;
      v39 = __Block_byref_object_dispose_;
      array = [MEMORY[0x277CBEB18] array];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __AXPIEventRepresentationFromTouches_block_invoke;
      v31[3] = &unk_278BE6308;
      v16 = v13;
      v34 = v4;
      v32 = v16;
      v33 = &v35;
      [v12 enumerateKeysAndObjectsUsingBlock:v31];
      v17 = v36[5];
      handInfo = [v15 handInfo];
      [handInfo setPaths:v17];

      _Block_object_dispose(&v35, 8);
    }

    else
    {
      v15 = 0;
    }

    [v15 setGenerationCount:self->_eventGenerationCount];
    if (v15)
    {
      if ([(AXPIFingerEventSender *)self shouldAddRealEventFlag])
      {
        [v15 setAdditionalFlags:{objc_msgSend(v15, "additionalFlags") | 0x8000}];
      }

      properties = [(AXPIFingerEventSender *)self properties];
      v20 = [properties valueForKey:@"Built-In"];
      [v15 setIsBuiltIn:{objc_msgSend(v20, "BOOLValue")}];

      properties2 = [(AXPIFingerEventSender *)self properties];
      v22 = [properties2 valueForKey:@"DisplayIntegrated"];
      [v15 setIsDisplayIntegrated:{objc_msgSend(v22, "BOOLValue")}];

      newHIDEventRef = [v15 newHIDEventRef];
      if (newHIDEventRef)
      {
        IOHIDEventSetSenderID();
        [(HIDVirtualEventService *)self->_eventService dispatchEvent:newHIDEventRef];
        CFRelease(newHIDEventRef);
      }
    }

    _Block_object_dispose(&v25, 8);
  }
}

uint64_t __66__AXPIFingerEventSender__sendHandEvent_touchesByFingerIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = [a2 scene];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v14 screen];
    v6 = [v5 displayConfiguration];
    v7 = [v6 hardwareIdentifier];

    if (v7 || ([*(a1 + 32) displayUUID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [*(a1 + 32) displayUUID];
      v9 = [v7 isEqualToString:v8];

      if (v7)
      {
        if (!v9)
        {
LABEL_7:

          goto LABEL_8;
        }
      }

      else
      {

        if ((v9 & 1) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    v10 = [v14 screen];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a3 = 1;
    goto LABEL_7;
  }

LABEL_8:

  return MEMORY[0x2821F96F8]();
}

- (id)_assignFingerIdentifiersToTouches:(id)touches
{
  v19 = *MEMORY[0x277D85DE8];
  touchesCopy = touches;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(touchesCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = touchesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v9, v14}];
        [v4 setObject:v11 forKeyedSubscript:v12];

        ++v9;
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end