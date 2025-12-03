@interface BKHIDPrimaryEventProcessor
- (BKHIDPrimaryEventProcessor)initWithSubProcessors:(id)processors[44] defaultProcessor:(id)processor;
- (id)_eventProcessorsForEventType:(unsigned int)type;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (int64_t)processEvent:(__IOHIDEvent *)event withContext:(id)context buffer:(id)buffer sequence:(id)sequence sender:(id)sender dispatcher:(id)dispatcher resolution:(id)resolution;
- (void)bufferDidEndDraining:(id)draining;
- (void)bufferWillBeginDraining:(id)draining;
- (void)bufferingDidAddNewBuffers:(id)buffers;
- (void)postEvent:(__IOHIDEvent *)event withContext:(id)context toResolution:(id)resolution fromSequence:(id)sequence;
@end

@implementation BKHIDPrimaryEventProcessor

- (id)_eventProcessorsForEventType:(unsigned int)type
{
  v3 = [(NSArray *)self->_subProcessors[type] copy];

  return v3;
}

- (void)bufferDidEndDraining:(id)draining
{
  v16 = *MEMORY[0x277D85DE8];
  drainingCopy = draining;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_allBufferedEventProcessors;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) bufferDidEndDraining:{drainingCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)bufferWillBeginDraining:(id)draining
{
  v16 = *MEMORY[0x277D85DE8];
  drainingCopy = draining;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_allBufferedEventProcessors;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) bufferWillBeginDraining:{drainingCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)bufferingDidAddNewBuffers:(id)buffers
{
  v16 = *MEMORY[0x277D85DE8];
  buffersCopy = buffers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_allBufferedEventProcessors;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) bufferingDidAddNewBuffers:{buffersCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)postEvent:(__IOHIDEvent *)event withContext:(id)context toResolution:(id)resolution fromSequence:(id)sequence
{
  contextCopy = context;
  resolutionCopy = resolution;
  sequenceCopy = sequence;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Something is misconfigured --BKHIDPrimaryEventProcessor should never be messaged directly by a sequence"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = 138544642;
    v18 = v14;
    v19 = 2114;
    v20 = v16;
    v21 = 2048;
    selfCopy = self;
    v23 = 2114;
    v24 = @"BKHIDPrimaryEventProcessor.m";
    v25 = 1024;
    v26 = 96;
    v27 = 2114;
    v28 = v13;
    _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v17, 0x3Au);
  }

  [v13 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (int64_t)processEvent:(__IOHIDEvent *)event withContext:(id)context buffer:(id)buffer sequence:(id)sequence sender:(id)sender dispatcher:(id)dispatcher resolution:(id)resolution
{
  contextCopy = context;
  bufferCopy = buffer;
  sequenceCopy = sequence;
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  resolutionCopy = resolution;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Something is misconfigured --BKHIDPrimaryEventProcessor should never be messaged directly by a sequence"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v22 = NSStringFromSelector(a2);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v26 = 138544642;
    v27 = v22;
    v28 = 2114;
    v29 = v24;
    v30 = 2048;
    selfCopy = self;
    v32 = 2114;
    v33 = @"BKHIDPrimaryEventProcessor.m";
    v34 = 1024;
    v35 = 91;
    v36 = 2114;
    v37 = v21;
    _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v26, 0x3Au);
  }

  [v21 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v26 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = *event;
  v11 = self->_subProcessors[IOHIDEventGetType()];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v11;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v13)
  {

LABEL_13:
    defaultProcessor = self->_defaultProcessor;
    if (defaultProcessor)
    {
      v17 = [(BKHIDEventProcessor *)defaultProcessor processEvent:event sender:senderCopy dispatcher:dispatcherCopy];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_16;
  }

  v14 = v13;
  v15 = *v22;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = [*(*(&v21 + 1) + 8 * i) processEvent:event sender:senderCopy dispatcher:{dispatcherCopy, v21}];
      if (v17 == 1)
      {

        goto LABEL_16;
      }
    }

    v14 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BKHIDPrimaryEventProcessor)initWithSubProcessors:(id)processors[44] defaultProcessor:(id)processor
{
  v33 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  v31.receiver = self;
  v31.super_class = BKHIDPrimaryEventProcessor;
  v7 = [(BKHIDPrimaryEventProcessor *)&v31 init];
  if (v7)
  {
    v23 = processorCopy;
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = 0;
    p_isa = &v7->super.isa;
    bufferedSubProcessors = v7->_bufferedSubProcessors;
    subProcessors = v7->_subProcessors;
    do
    {
      v10 = processors[v9];
      v11 = v10;
      objc_storeStrong(&subProcessors[v9], v10);
      array = [MEMORY[0x277CBEB18] array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v8 addObject:v18];
              [(NSArray *)array addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }

      v19 = bufferedSubProcessors[v9];
      bufferedSubProcessors[v9] = array;

      ++v9;
    }

    while (v9 != 44);
    v7 = p_isa;
    objc_storeStrong(p_isa + 90, v8);
    objc_storeStrong(p_isa + 45, processor);
    processorCopy = v23;
    if (objc_opt_respondsToSelector())
    {
      objc_storeStrong(p_isa + 91, processor);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

@end