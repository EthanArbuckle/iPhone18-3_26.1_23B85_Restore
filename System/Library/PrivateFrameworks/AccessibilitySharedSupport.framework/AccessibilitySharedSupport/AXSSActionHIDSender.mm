@interface AXSSActionHIDSender
- (AXSSActionHIDSender)init;
- (void)dealloc;
- (void)sendEvent:(id)event;
@end

@implementation AXSSActionHIDSender

- (AXSSActionHIDSender)init
{
  v15.receiver = self;
  v15.super_class = AXSSActionHIDSender;
  v2 = [(AXSSActionHIDSender *)&v15 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:init__sID];
    v5 = [v3 stringWithFormat:@"com.apple.accessibility.action.eventSendingQueue-%@", v4];

    v6 = dispatch_queue_create([v5 UTF8String], 0);
    eventSendingQueue = v2->_eventSendingQueue;
    v2->_eventSendingQueue = v6;

    ++init__sID;
    v8 = objc_alloc_init(MEMORY[0x1E69A2968]);
    eventService = v2->_eventService;
    v2->_eventService = v8;

    properties = v2->_properties;
    v2->_properties = &unk_1F4067030;

    v11 = v2->_eventSendingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__AXSSActionHIDSender_init__block_invoke;
    block[3] = &unk_1E8134870;
    v14 = v2;
    dispatch_sync(v11, block);
  }

  return v2;
}

uint64_t __27__AXSSActionHIDSender_init__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setDelegate:?];
  [*(*(a1 + 32) + 24) setCancelHandler:&__block_literal_global_2];
  [*(*(a1 + 32) + 24) setDispatchQueue:*(*(a1 + 32) + 16)];
  v2 = *(*(a1 + 32) + 24);

  return [v2 activate];
}

- (void)dealloc
{
  label = dispatch_queue_get_label(0);
  eventSendingQueue = self->_eventSendingQueue;
  v5 = dispatch_queue_get_label(eventSendingQueue);
  if (!strcmp(label, v5))
  {
    [(HIDVirtualEventService *)self->_eventService cancel];
    eventService = self->_eventService;
    self->_eventService = 0;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__AXSSActionHIDSender_dealloc__block_invoke;
    block[3] = &unk_1E8134870;
    block[4] = self;
    dispatch_sync(eventSendingQueue, block);
  }

  v7.receiver = self;
  v7.super_class = AXSSActionHIDSender;
  [(AXSSActionHIDSender *)&v7 dealloc];
}

void __30__AXSSActionHIDSender_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) cancel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  eventSendingQueue = self->_eventSendingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__AXSSActionHIDSender_sendEvent___block_invoke;
  v7[3] = &unk_1E8134950;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(eventSendingQueue, v7);
}

void __33__AXSSActionHIDSender_sendEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventService];
  [v2 dispatchEvent:*(a1 + 40)];
}

@end