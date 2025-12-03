@interface AXPIEventSender
+ (id)sharedInstance;
- (AXPIEventSender)init;
- (void)sendEventRepresentation:(id)representation;
- (void)sendIOHIDEventRef:(__IOHIDEvent *)ref;
@end

@implementation AXPIEventSender

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXPIEventSender sharedInstance];
  }

  v3 = sharedInstance__shared;

  return v3;
}

uint64_t __33__AXPIEventSender_sharedInstance__block_invoke()
{
  sharedInstance__shared = objc_alloc_init(AXPIEventSender);

  return MEMORY[0x2821F96F8]();
}

- (AXPIEventSender)init
{
  v6.receiver = self;
  v6.super_class = AXPIEventSender;
  v2 = [(AXPIEventSender *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXPIEventSender-EventSendingQueue", 0);
    eventSendingQueue = v2->_eventSendingQueue;
    v2->_eventSendingQueue = v3;

    [(AXPIEventSender *)v2 setSenderID:0x8000000817319372];
  }

  return v2;
}

- (void)sendEventRepresentation:(id)representation
{
  representationCopy = representation;
  eventSendingQueue = self->_eventSendingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__AXPIEventSender_sendEventRepresentation___block_invoke;
  v7[3] = &unk_278BE6330;
  v8 = representationCopy;
  selfCopy = self;
  v6 = representationCopy;
  dispatch_async(eventSendingQueue, v7);
}

void __43__AXPIEventSender_sendEventRepresentation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) postHIDEventDirectly])
  {
    if (!*(*(a1 + 40) + 8))
    {
      *(*(a1 + 40) + 8) = IOHIDEventSystemClientCreate();
    }

    v5 = [*(a1 + 32) normalizedEventRepresentation:0 scale:0];
    v2 = [v5 newHIDEventRef];
    if (v2)
    {
      v3 = v2;
      IOHIDEventSetSenderID();
      IOHIDEventSystemClientDispatchEvent();
      CFRelease(v3);
    }
  }

  else
  {
    v4 = ([*(a1 + 32) additionalFlags] >> 14) & 1;
    [*(a1 + 32) setAdditionalFlags:{objc_msgSend(*(a1 + 32), "additionalFlags") & 0xFFFFFFFFFFFFBFFFLL}];
    [*(a1 + 32) setSenderID:*(*(a1 + 40) + 24)];
    v5 = [MEMORY[0x277CE7D28] server];
    [v5 postEvent:*(a1 + 32) systemEvent:v4];
  }
}

- (void)sendIOHIDEventRef:(__IOHIDEvent *)ref
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = ref;
  if (ref)
  {
    CFRetain(ref);
  }

  eventSendingQueue = self->_eventSendingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__AXPIEventSender_sendIOHIDEventRef___block_invoke;
  block[3] = &unk_278BE6358;
  block[5] = v7;
  block[6] = ref;
  block[4] = self;
  dispatch_async(eventSendingQueue, block);
  _Block_object_dispose(v7, 8);
}

void __37__AXPIEventSender_sendIOHIDEventRef___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    *(*(a1 + 32) + 8) = IOHIDEventSystemClientCreate();
  }

  IOHIDEventSetSenderID();
  IOHIDEventSystemClientDispatchEvent();
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

@end