@interface BKHIDPrimaryEventProcessor
- (BKHIDPrimaryEventProcessor)initWithSubProcessors:(id)a3[44] defaultProcessor:(id)a4;
- (id)_eventProcessorsForEventType:(unsigned int)a3;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (int64_t)processEvent:(__IOHIDEvent *)a3 withContext:(id)a4 buffer:(id)a5 sequence:(id)a6 sender:(id)a7 dispatcher:(id)a8 resolution:(id)a9;
- (void)bufferDidEndDraining:(id)a3;
- (void)bufferWillBeginDraining:(id)a3;
- (void)bufferingDidAddNewBuffers:(id)a3;
- (void)postEvent:(__IOHIDEvent *)a3 withContext:(id)a4 toResolution:(id)a5 fromSequence:(id)a6;
@end

@implementation BKHIDPrimaryEventProcessor

- (id)_eventProcessorsForEventType:(unsigned int)a3
{
  v3 = [(NSArray *)self->_subProcessors[a3] copy];

  return v3;
}

- (void)bufferDidEndDraining:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v11 + 1) + 8 * v9++) bufferDidEndDraining:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)bufferWillBeginDraining:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v11 + 1) + 8 * v9++) bufferWillBeginDraining:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)bufferingDidAddNewBuffers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v11 + 1) + 8 * v9++) bufferingDidAddNewBuffers:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)postEvent:(__IOHIDEvent *)a3 withContext:(id)a4 toResolution:(id)a5 fromSequence:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
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
    v22 = self;
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

- (int64_t)processEvent:(__IOHIDEvent *)a3 withContext:(id)a4 buffer:(id)a5 sequence:(id)a6 sender:(id)a7 dispatcher:(id)a8 resolution:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
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
    v31 = self;
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

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = *a3;
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
      v17 = [(BKHIDEventProcessor *)defaultProcessor processEvent:a3 sender:v8 dispatcher:v9];
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

      v17 = [*(*(&v21 + 1) + 8 * i) processEvent:a3 sender:v8 dispatcher:{v9, v21}];
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

- (BKHIDPrimaryEventProcessor)initWithSubProcessors:(id)a3[44] defaultProcessor:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v31.receiver = self;
  v31.super_class = BKHIDPrimaryEventProcessor;
  v7 = [(BKHIDPrimaryEventProcessor *)&v31 init];
  if (v7)
  {
    v23 = v6;
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = 0;
    p_isa = &v7->super.isa;
    bufferedSubProcessors = v7->_bufferedSubProcessors;
    subProcessors = v7->_subProcessors;
    do
    {
      v10 = a3[v9];
      v11 = v10;
      objc_storeStrong(&subProcessors[v9], v10);
      v12 = [MEMORY[0x277CBEB18] array];
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
              [(NSArray *)v12 addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }

      v19 = bufferedSubProcessors[v9];
      bufferedSubProcessors[v9] = v12;

      ++v9;
    }

    while (v9 != 44);
    v7 = p_isa;
    objc_storeStrong(p_isa + 90, v8);
    objc_storeStrong(p_isa + 45, a4);
    v6 = v23;
    if (objc_opt_respondsToSelector())
    {
      objc_storeStrong(p_isa + 91, a4);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

@end