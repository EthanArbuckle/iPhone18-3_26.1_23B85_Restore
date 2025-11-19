@interface BKHIDBiometricEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
@end

@implementation BKHIDBiometricEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = *a3;
  IntegerValue = IOHIDEventGetIntegerValue();
  if (IntegerValue > 3)
  {
    v12 = BKLogHID();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v25 = IntegerValue;
      _os_log_error_impl(&dword_241980000, v12, OS_LOG_TYPE_ERROR, "Dropping unknown biometric event type %d ", buf, 8u);
    }
  }

  else
  {
    Copy = IOHIDEventCreateCopy();
    v12 = [v8 destinationsForEvent:Copy fromSender:v7];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          [v7 eventSource];
          BKSHIDEventSetSimpleDeliveryInfo();
          [v8 postEvent:Copy toDestination:v17];
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v14);
    }

    CFRelease(Copy);
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

@end