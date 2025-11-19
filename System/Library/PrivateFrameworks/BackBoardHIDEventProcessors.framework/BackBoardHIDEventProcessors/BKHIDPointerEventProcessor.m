@interface BKHIDPointerEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (void)_dispatchEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5 destinations:(id)a6;
@end

@implementation BKHIDPointerEventProcessor

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
  v48 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = *a3;
  if (IOHIDEventGetType() == 17)
  {
    SenderID = IOHIDEventGetSenderID();
    Event = IOHIDEventGetEvent();
    if (Event)
    {
      IOHIDEventGetFloatValue();
      v14 = v13;
      IOHIDEventGetFloatValue();
      v16 = v15 != 0.0 || v14 != 0.0;
    }

    else
    {
      v16 = 0;
    }

    v18 = IOHIDEventGetEvent();
    if (v18)
    {
      v19 = IOHIDEventGetIntegerValue() != 0;
    }

    else
    {
      v19 = 0;
    }

    v41 = self;
    eventRecords = self->_eventRecords;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
    v22 = [(NSMutableDictionary *)eventRecords objectForKey:v21];

    if (v22)
    {
      v23 = [(BKHIDPointerEventRecord *)v22 destinations];
      if (Event)
      {
        [(BKHIDPointerEventRecord *)v22 setTrackingPointerMovement:v16];
      }

      if (v18)
      {
        [(BKHIDPointerEventRecord *)v22 setTrackingButtonDown:v19];
      }

      if (![(BKHIDPointerEventRecord *)v22 trackingPointerMovement]&& ![(BKHIDPointerEventRecord *)v22 trackingButtonDown])
      {
        v24 = v41->_eventRecords;
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
        [(NSMutableDictionary *)v24 removeObjectForKey:v25];

        v26 = BKLogHID();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
LABEL_26:

          goto LABEL_28;
        }

        v27 = [v8 displayUUID];
        v28 = [(BKHIDPointerEventRecord *)v22 succinctDescription];
        *buf = 134218498;
        v43 = SenderID;
        v44 = 2114;
        v45 = v27;
        v46 = 2114;
        v47 = v28;
        v29 = " %llX <displayID:%{public}@> pointer processing finished: %{public}@";
LABEL_25:
        _os_log_impl(&dword_241980000, v26, OS_LOG_TYPE_DEFAULT, v29, buf, 0x20u);

        goto LABEL_26;
      }
    }

    else
    {
      v23 = [v9 destinationsForEvent:v10 fromSender:v8];
      if (v19 || v16)
      {
        v22 = objc_alloc_init(BKHIDPointerEventRecord);
        [(BKHIDPointerEventRecord *)v22 setSenderInfo:v8];
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [(BKHIDPointerEventRecord *)v22 setDestinationCaptureTime:?];
        [(BKHIDPointerEventRecord *)v22 setDestinations:v23];
        [(BKHIDPointerEventRecord *)v22 setTrackingButtonDown:v19];
        [(BKHIDPointerEventRecord *)v22 setTrackingPointerMovement:v16];
        v30 = v41->_eventRecords;
        if (!v30)
        {
          v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v32 = v41->_eventRecords;
          v41->_eventRecords = v31;

          v30 = v41->_eventRecords;
        }

        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
        [(NSMutableDictionary *)v30 setObject:v22 forKey:v33];

        v26 = BKLogHID();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        v27 = [v8 displayUUID];
        v28 = [(BKHIDPointerEventRecord *)v22 succinctDescription];
        *buf = 134218498;
        v43 = SenderID;
        v44 = 2114;
        v45 = v27;
        v46 = 2114;
        v47 = v28;
        v29 = " %llX <displayID:%{public}@> pointer processing began: %{public}@";
        goto LABEL_25;
      }

      v22 = 0;
    }

LABEL_28:
    v34 = [v23 count];
    v35 = BKLogHID();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
    if (v34)
    {
      if (v36)
      {
        v37 = [v8 displayUUID];
        *buf = 138543618;
        v43 = v37;
        v44 = 2114;
        v45 = v10;
        _os_log_impl(&dword_241980000, v35, OS_LOG_TYPE_INFO, "Got an external interaction event meant for display: %{public}@, %{public}@", buf, 0x16u);
      }

      if ([v8 eventSource])
      {
        goto LABEL_36;
      }

      v35 = [v8 displayUUID];
      _BKHIDNoteUserEventOccurredOnDisplay();
    }

    else if (v36)
    {
      Type = IOHIDEventGetType();
      *buf = 67109120;
      LODWORD(v43) = Type;
      _os_log_impl(&dword_241980000, v35, OS_LOG_TYPE_INFO, "Got an external interaction event of type %d, but there is no destination set for it", buf, 8u);
    }

LABEL_36:
    [(BKHIDPointerEventProcessor *)v41 _dispatchEvent:v10 sender:v8 dispatcher:v9 destinations:v23];

    v17 = 1;
    goto LABEL_37;
  }

  v17 = 0;
LABEL_37:

  v39 = *MEMORY[0x277D85DE8];
  return v17;
}

@end