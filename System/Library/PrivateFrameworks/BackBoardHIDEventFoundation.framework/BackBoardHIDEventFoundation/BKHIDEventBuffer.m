@interface BKHIDEventBuffer
- (BKHIDEventBuffer)initWithDispatchTarget:(id)a3;
- (id)drainAllEvents;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)appendEvent:(__IOHIDEvent *)a3 sender:(id)a4 sequence:(id)a5 additionalContext:(id)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKHIDEventBuffer

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_buffer;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v11 + 1) + 8 * v7++) invalidate];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    buffer = self->_buffer;
    self->_buffer = 0;

    dispatchTarget = self->_dispatchTarget;
    self->_dispatchTarget = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_invalidated"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = @"BKHIDEventBuffer.m";
      v18 = 1024;
      v19 = 76;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC2074);
  }

  v9.receiver = self;
  v9.super_class = BKHIDEventBuffer;
  [(BKHIDEventBuffer *)&v9 dealloc];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__BKHIDEventBuffer_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2784F7270;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

id __49__BKHIDEventBuffer_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"dispatchTarget"];
  if ([*(*(a1 + 40) + 32) count])
  {
    v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"bufferingPIDs"];
  }

  v4 = [*(a1 + 32) appendInteger:objc_msgSend(*(*(a1 + 40) + 8) withName:{"count"), @"eventCount"}];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 17) withName:@"allBufferingClientsTerminated" ifEqualTo:1];
}

- (id)drainAllEvents
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = BKLogEventDelivery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_buffer count];
    v11[0] = 67109120;
    v11[1] = v4;
    _os_log_impl(&dword_223CBE000, v3, OS_LOG_TYPE_DEFAULT, "Draining buffer with %d events", v11, 8u);
  }

  v5 = self->_buffer;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:256];
  buffer = self->_buffer;
  self->_buffer = v6;

  bufferingPIDs = self->_bufferingPIDs;
  self->_bufferingPIDs = 0;

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)appendEvent:(__IOHIDEvent *)a3 sender:(id)a4 sequence:(id)a5 additionalContext:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"event != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v37 = v21;
      v38 = 2114;
      v39 = v23;
      v40 = 2048;
      v41 = self;
      v42 = 2114;
      v43 = @"BKHIDEventBuffer.m";
      v44 = 1024;
      v45 = 82;
      v46 = 2114;
      v47 = v20;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CEA94CLL);
  }

  if (!v11)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"sender != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v37 = v25;
      v38 = 2114;
      v39 = v27;
      v40 = 2048;
      v41 = self;
      v42 = 2114;
      v43 = @"BKHIDEventBuffer.m";
      v44 = 1024;
      v45 = 83;
      v46 = 2114;
      v47 = v24;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CEAA44);
  }

  if (!v12)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"sequence != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v37 = v29;
      v38 = 2114;
      v39 = v31;
      v40 = 2048;
      v41 = self;
      v42 = 2114;
      v43 = @"BKHIDEventBuffer.m";
      v44 = 1024;
      v45 = 84;
      v46 = 2114;
      v47 = v28;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CEAB3CLL);
  }

  v14 = v13;
  v15 = [v11 senderDescriptor];

  if (!v15)
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[sender senderDescriptor] != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v37 = v33;
      v38 = 2114;
      v39 = v35;
      v40 = 2048;
      v41 = self;
      v42 = 2114;
      v43 = @"BKHIDEventBuffer.m";
      v44 = 1024;
      v45 = 85;
      v46 = 2114;
      v47 = v32;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CEAC34);
  }

  if ([(NSMutableArray *)self->_buffer count]> 0x100)
  {
    v16 = BKLogEventDelivery();
    if (!os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v17 = BKSHIDEventGetConciseDescription();
    *buf = 138543362;
    v37 = v17;
    _os_log_error_impl(&dword_223CBE000, &v16->super, OS_LOG_TYPE_ERROR, "BUFFER: is full -- dropping event (%{public}@)", buf, 0xCu);
  }

  else
  {
    v16 = objc_alloc_init(BKBufferedEventEntry);
    [(BKBufferedEventEntry *)v16 setEvent:a3];
    [(BKBufferedEventEntry *)v16 setSender:v11];
    [(BKBufferedEventEntry *)v16 setSequence:v12];
    if (v14)
    {
      [(BKBufferedEventEntry *)v16 setAdditionalContext:v14];
    }

    [(NSMutableArray *)self->_buffer addObject:v16];
    v17 = BKLogEventDelivery();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = BKSHIDEventGetConciseDescription();
      *buf = 138543362;
      v37 = v19;
      _os_log_debug_impl(&dword_223CBE000, v17, OS_LOG_TYPE_DEBUG, "BUFFER: appending (%{public}@)", buf, 0xCu);
    }
  }

LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
}

- (BKHIDEventBuffer)initWithDispatchTarget:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BKHIDEventBuffer;
  v6 = [(BKHIDEventBuffer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchTarget, a3);
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:256];
    buffer = v7->_buffer;
    v7->_buffer = v8;
  }

  return v7;
}

@end