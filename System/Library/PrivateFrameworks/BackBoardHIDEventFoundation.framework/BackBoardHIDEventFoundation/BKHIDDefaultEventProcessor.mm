@interface BKHIDDefaultEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
@end

@implementation BKHIDDefaultEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v21 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  v8 = *event;
  v9 = [dispatcherCopy destinationsForEvent:v8 fromSender:sender];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [dispatcherCopy postEvent:v8 toDestination:*(*(&v16 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

@end