@interface VCEmulatedNetwork
- (VCEmulatedNetwork)initWithPolicies:(id)policies;
- (id)copyPacketFromPop;
- (unsigned)numberOfPacketsWaitingInOutputQueue;
- (void)dealloc;
- (void)push:(id)push;
@end

@implementation VCEmulatedNetwork

- (VCEmulatedNetwork)initWithPolicies:(id)policies
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCEmulatedNetwork;
  v4 = [(VCEmulatedNetwork *)&v9 init];
  if (v4)
  {
    v4->_policies = policies;
    v5 = [(VCEmulatedNetworkElement *)[VCEmulatedOutputQueue alloc] initWithPolicies:0];
    v4->_outputQueue = v5;
    if (!v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCEmulatedNetwork *)v6 initWithPolicies:v7];
        }
      }

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];

  pushCompletionHandler = self->_pushCompletionHandler;
  if (pushCompletionHandler)
  {
    _Block_release(pushCompletionHandler);
  }

  popCompletionHandler = self->_popCompletionHandler;
  if (popCompletionHandler)
  {
    _Block_release(popCompletionHandler);
  }

  v5.receiver = self;
  v5.super_class = VCEmulatedNetwork;
  [(VCEmulatedNetwork *)&v5 dealloc];
}

- (void)push:(id)push
{
  [(VCEmulatedNetworkElement *)self->_outputQueue write:?];
  pushCompletionHandler = self->_pushCompletionHandler;
  if (pushCompletionHandler)
  {
    v5 = *(pushCompletionHandler + 2);

    v5();
  }
}

- (id)copyPacketFromPop
{
  if (![(VCEmulatedNetwork *)self numberOfPacketsWaitingInOutputQueue])
  {
    return 0;
  }

  copyPacketFromPop = [(VCEmulatedOutputQueue *)self->_outputQueue copyPacketFromPop];
  popCompletionHandler = self->_popCompletionHandler;
  if (popCompletionHandler)
  {
    v5 = copyPacketFromPop == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    popCompletionHandler[2](popCompletionHandler, copyPacketFromPop);
  }

  return copyPacketFromPop;
}

- (unsigned)numberOfPacketsWaitingInOutputQueue
{
  result = [(VCEmulatedOutputQueue *)self->_outputQueue numberOfPacketsInOutputQueue];
  self->_numberOfPacketsWaitingInOutputQueue = result;
  return result;
}

- (void)initWithPolicies:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCEmulatedNetwork initWithPolicies:]";
  v6 = 1024;
  v7 = 22;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot create output queue successfully!", &v2, 0x1Cu);
}

@end