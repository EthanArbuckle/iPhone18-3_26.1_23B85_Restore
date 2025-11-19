@interface BKHIDScrollEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (void)_dispatchEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5 destinations:(id)a6;
@end

@implementation BKHIDScrollEventProcessor

- (void)_dispatchEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5 destinations:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        Copy = IOHIDEventCreateCopy();
        [v8 eventSource];
        BKSHIDEventSetSimpleDeliveryInfo();
        [v9 postEvent:Copy toDestination:v15];
        CFRelease(Copy);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *a3;
  if (IOHIDEventGetType() == 6)
  {
    v11 = [v9 destinationsForEvent:v10 fromSender:v8];
    [(BKHIDScrollEventProcessor *)self _dispatchEvent:v10 sender:v8 dispatcher:v9 destinations:v11];

    v12 = [v8 displayUUID];
    _BKHIDNoteUserEventOccurredOnDisplay();

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end