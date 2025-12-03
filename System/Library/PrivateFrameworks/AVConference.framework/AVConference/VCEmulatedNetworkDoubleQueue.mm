@interface VCEmulatedNetworkDoubleQueue
- (VCEmulatedNetworkDoubleQueue)initWithPolicies:(id)policies;
- (void)dealloc;
- (void)push:(id)push;
- (void)runUntilTime:(double)time;
@end

@implementation VCEmulatedNetworkDoubleQueue

- (VCEmulatedNetworkDoubleQueue)initWithPolicies:(id)policies
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCEmulatedNetworkDoubleQueue;
  v4 = [(VCEmulatedNetwork *)&v14 initWithPolicies:?];
  if (v4)
  {
    v5 = [policies objectForKeyedSubscript:@"DoubleQueueImpairments"];
    v6 = [v5 objectForKeyedSubscript:@"QueueAImpairments"];
    v7 = [v5 objectForKeyedSubscript:@"QueueBImpairments"];
    v4->_networkQueueA = [[VCEmulatedNetworkQueue alloc] initWithPolicies:v6];
    v8 = [[VCEmulatedNetworkQueue alloc] initWithPolicies:v7];
    v4->_networkQueueB = v8;
    networkQueueA = v4->_networkQueueA;
    if (networkQueueA)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCEmulatedNetworkDoubleQueue *)v11 initWithPolicies:v12];
        }
      }

      return 0;
    }

    else
    {
      [(VCEmulatedNetworkElement *)networkQueueA connectTo:v4->super._outputQueue];
      [(VCEmulatedNetworkElement *)v4->_networkQueueB connectTo:v4->super._outputQueue];
    }
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCEmulatedNetworkDoubleQueue;
  [(VCEmulatedNetwork *)&v3 dealloc];
}

- (void)push:(id)push
{
  packetID = [push packetID];
  v6 = &OBJC_IVAR___VCEmulatedNetworkDoubleQueue__networkQueueA;
  if ((packetID & 1) == 0)
  {
    v6 = &OBJC_IVAR___VCEmulatedNetworkDoubleQueue__networkQueueB;
  }

  if ([*(&self->super.super.isa + *v6) write:push])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCEmulatedNetworkDoubleQueue *)v7 push:push, v8];
      }
    }
  }

  else
  {
    pushCompletionHandler = self->super._pushCompletionHandler;
    if (pushCompletionHandler)
    {
      v10 = *(pushCompletionHandler + 2);

      v10();
    }
  }
}

- (void)runUntilTime:(double)time
{
  [(VCEmulatedNetworkQueue *)self->_networkQueueA runUntilTime:?];
  networkQueueB = self->_networkQueueB;

  [(VCEmulatedNetworkQueue *)networkQueueB runUntilTime:time];
}

- (void)initWithPolicies:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCEmulatedNetworkDoubleQueue initWithPolicies:]";
  v6 = 1024;
  v7 = 21;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot create network queue(s) successfully!", &v2, 0x1Cu);
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
  v9 = "[VCEmulatedNetworkDoubleQueue push:]";
  v10 = 1024;
  v11 = 50;
  v12 = 1024;
  v13 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to write to network queue %c", &v6, 0x22u);
}

@end