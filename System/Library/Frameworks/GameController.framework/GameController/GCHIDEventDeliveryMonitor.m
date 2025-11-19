@interface GCHIDEventDeliveryMonitor
@end

@implementation GCHIDEventDeliveryMonitor

void __44___GCHIDEventDeliveryMonitor_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Shared_3;
  sharedInstance_Shared_3 = v0;
}

__CFString *__34___GCHIDEventDeliveryMonitor_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(WeakRetained, "deferringTarget")}];
    [v4 setObject:v7 forKeyedSubscript:@"DeferringTarget"];

    v8 = @"GCHIDEventDeliveryMonitor";
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end