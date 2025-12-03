@interface _GCHIDEventDeliveryMonitor
+ (id)sharedInstance;
- (_GCHIDEventDeliveryMonitor)init;
- (void)dealloc;
- (void)observer:(id)observer deliveryChainDidUpdate:(id)update;
@end

@implementation _GCHIDEventDeliveryMonitor

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken_6 != -1)
  {
    +[_GCHIDEventDeliveryMonitor sharedInstance];
  }

  v0 = sharedInstance_Shared_3;

  return v0;
}

- (_GCHIDEventDeliveryMonitor)init
{
  v17.receiver = self;
  v17.super_class = _GCHIDEventDeliveryMonitor;
  v2 = [(_GCHIDEventDeliveryMonitor *)&v17 init];
  v2->_deferringTarget = 0;
  v3 = objc_alloc(MEMORY[0x1E698E3A8]);
  nullDisplay = [MEMORY[0x1E698E3C8] nullDisplay];
  keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
  v6 = [v3 initWithDisplay:nullDisplay environment:keyboardFocusEnvironment];
  deliveryChain = v2->_deliveryChain;
  v2->_deliveryChain = v6;

  v8 = [(BKSHIDEventDeliveryChainObserver *)v2->_deliveryChain addChainObserver:v2];
  deliveryChainObserver = v2->_deliveryChainObserver;
  v2->_deliveryChainObserver = v8;

  objc_initWeak(&location, v2);
  v10 = dispatch_get_global_queue(17, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __34___GCHIDEventDeliveryMonitor_init__block_invoke;
  v14[3] = &unk_1E8418DD0;
  objc_copyWeak(&v15, &location);
  v11 = v14;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __gc_state_add_dictionary_handler_block_invoke_2;
  v21 = &unk_1E8418DF8;
  v23 = 4;
  v22 = v11;
  v12 = os_state_add_handler();

  v2->_state = v12;
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_deliveryChainObserver invalidate];
  v3.receiver = self;
  v3.super_class = _GCHIDEventDeliveryMonitor;
  [(_GCHIDEventDeliveryMonitor *)&v3 dealloc];
}

- (void)observer:(id)observer deliveryChainDidUpdate:(id)update
{
  observerCopy = observer;
  updateCopy = update;
  deferringPath = [updateCopy deferringPath];
  if (![deferringPath count])
  {
    v10 = 0;
    goto LABEL_5;
  }

  lastObject = [deferringPath lastObject];
  v10 = [lastObject pid];

  if (v10 <= 0)
  {
LABEL_5:
    v11 = "Notify No Active HID Event Target";
    goto LABEL_6;
  }

  v11 = "Notify Active HID Event Target Changed";
LABEL_6:
  v12 = _os_activity_create(&dword_1D2CD5000, v11, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v12, &v13);
  [(_GCHIDEventDeliveryMonitor *)self willChangeValueForKey:@"deferringTarget"];
  self->_deferringTarget = v10;
  [(_GCHIDEventDeliveryMonitor *)self didChangeValueForKey:@"deferringTarget"];
  os_activity_scope_leave(&v13);
}

@end