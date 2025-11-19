@interface BKHIDGameControllerEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
@end

@implementation BKHIDGameControllerEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  _BKHIDNoteUserEventOccurredOnDisplay();
  v9 = BKLogIdleTimer();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_241980000, v9, OS_LOG_TYPE_DEBUG, "game controller event occurred; notifying user event timer", buf, 2u);
  }

  v10 = [v8 destinationsForEvent:*a3 fromSender:v7];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        Copy = IOHIDEventCreateCopy();
        [v7 eventSource];
        BKSHIDEventSetSimpleDeliveryInfo();
        [v8 postEvent:Copy toDestination:v15];
        CFRelease(Copy);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

@end