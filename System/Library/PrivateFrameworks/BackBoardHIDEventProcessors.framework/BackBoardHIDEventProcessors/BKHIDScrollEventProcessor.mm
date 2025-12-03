@interface BKHIDScrollEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)_dispatchEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher destinations:(id)destinations;
@end

@implementation BKHIDScrollEventProcessor

- (void)_dispatchEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher destinations:(id)destinations
{
  v23 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  destinationsCopy = destinations;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [destinationsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(destinationsCopy);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        Copy = IOHIDEventCreateCopy();
        [senderCopy eventSource];
        BKSHIDEventSetSimpleDeliveryInfo();
        [dispatcherCopy postEvent:Copy toDestination:v15];
        CFRelease(Copy);
        ++v14;
      }

      while (v12 != v14);
      v12 = [destinationsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = *event;
  if (IOHIDEventGetType() == 6)
  {
    v11 = [dispatcherCopy destinationsForEvent:v10 fromSender:senderCopy];
    [(BKHIDScrollEventProcessor *)self _dispatchEvent:v10 sender:senderCopy dispatcher:dispatcherCopy destinations:v11];

    displayUUID = [senderCopy displayUUID];
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