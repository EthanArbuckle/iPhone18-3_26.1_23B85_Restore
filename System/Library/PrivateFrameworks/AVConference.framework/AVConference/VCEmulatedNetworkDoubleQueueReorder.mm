@interface VCEmulatedNetworkDoubleQueueReorder
- (BOOL)shouldSendPacketImmediatelyMM;
- (VCEmulatedNetworkDoubleQueueReorder)initWithPolicies:(id)a3;
- (void)dealloc;
- (void)push:(id)a3;
@end

@implementation VCEmulatedNetworkDoubleQueueReorder

- (VCEmulatedNetworkDoubleQueueReorder)initWithPolicies:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCEmulatedNetworkDoubleQueueReorder;
  v4 = [(VCEmulatedNetworkDoubleQueue *)&v14 initWithPolicies:?];
  if (v4)
  {
    v5 = [a3 objectForKeyedSubscript:@"DoubleQueueImpairments"];
    [objc_msgSend(v5 objectForKeyedSubscript:{@"ReorderProbability", "doubleValue"}];
    v4->_probability = v6;
    if ([v5 objectForKeyedSubscript:@"ReorderCorrelation"] && objc_msgSend(v5, "objectForKeyedSubscript:", @"ReorderGap"))
    {
      v4->_useMarkovModel = 1;
      [objc_msgSend(v5 objectForKeyedSubscript:{@"ReorderCorrelation", "doubleValue"}];
      v4->_correlation = v7;
      v4->_reorderGap = [objc_msgSend(v5 objectForKeyedSubscript:{@"ReorderGap", "integerValue"}];
      v4->_state = 0;
      v4->_gap = 1;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        probability = v4->_probability;
        correlation = v4->_correlation;
        reorderGap = v4->_reorderGap;
        *buf = 136316418;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCEmulatedNetworkDoubleQueueReorder initWithPolicies:]";
        v19 = 1024;
        v20 = 26;
        v21 = 2048;
        v22 = probability;
        v23 = 2048;
        v24 = correlation;
        v25 = 1024;
        v26 = reorderGap;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reorder profile probability: %2.2f correlation: %2.2f gap: %d", buf, 0x36u);
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCEmulatedNetworkDoubleQueueReorder;
  [(VCEmulatedNetworkDoubleQueue *)&v2 dealloc];
}

- (BOOL)shouldSendPacketImmediatelyMM
{
  state = self->_state;
  result = 1;
  if (state <= 0)
  {
    if (state == -1)
    {
      NSLog(&cfstr_InvalidStateD.isa, a2, 0xFFFFFFFFLL);
      return 1;
    }

    else if (!state)
    {
      gap = self->_gap;
      reorderGap = self->_reorderGap;
      result = gap >= reorderGap;
      if (gap < reorderGap)
      {
        self->_state = 0;
        gap = self->_gap + 1;
        self->_gap = gap;
        reorderGap = self->_reorderGap;
      }

      if (gap == reorderGap - 1)
      {
        self->_gap = 1;
        self->_state = 1;
      }
    }
  }

  else
  {
    if (state == 1)
    {
      v7 = 64;
    }

    else
    {
      if (state != 2)
      {
        if (state == 3)
        {
          result = 0;
          self->_state = 0;
        }

        return result;
      }

      v7 = 72;
    }

    v8 = *(&self->super.super.super.isa + v7);
    v9 = 2;
    if (v8 > *"")
    {
      v10 = arc4random_uniform(0xFFFFu) / 65535.0;
      result = v10 > v8;
      if (v10 > v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }
    }

    self->_state = v9;
  }

  return result;
}

- (void)push:(id)a3
{
  if (!self->_useMarkovModel)
  {
    probability = self->_probability;
    if (probability > *"" && arc4random_uniform(0xFFFFu) / 65535.0 <= probability)
    {
      goto LABEL_7;
    }

LABEL_6:
    v6 = &OBJC_IVAR___VCEmulatedNetworkDoubleQueue__networkQueueA;
    goto LABEL_8;
  }

  if ([(VCEmulatedNetworkDoubleQueueReorder *)self shouldSendPacketImmediatelyMM])
  {
    goto LABEL_6;
  }

LABEL_7:
  v6 = &OBJC_IVAR___VCEmulatedNetworkDoubleQueue__networkQueueB;
LABEL_8:
  if ([*(&self->super.super.super.isa + *v6) write:a3])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCEmulatedNetworkDoubleQueueReorder *)v7 push:a3, v8];
      }
    }
  }

  else
  {
    pushCompletionHandler = self->super.super._pushCompletionHandler;
    if (pushCompletionHandler)
    {
      v10 = *(pushCompletionHandler + 2);

      v10();
    }
  }
}

- (void)push:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = 136315906;
  if ([a2 packetID])
  {
    v5 = 65;
  }

  else
  {
    v5 = 66;
  }

  v7 = a1;
  v8 = 2080;
  v9 = "[VCEmulatedNetworkDoubleQueueReorder push:]";
  v10 = 1024;
  v11 = 90;
  v12 = 1024;
  v13 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to write to network queue %c", &v6, 0x22u);
}

@end