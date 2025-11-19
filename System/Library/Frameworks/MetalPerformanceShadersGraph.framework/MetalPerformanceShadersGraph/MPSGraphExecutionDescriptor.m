@interface MPSGraphExecutionDescriptor
- (MPSGraphExecutionDescriptor)init;
- (void)signalEvent:(id)event atExecutionEvent:(MPSGraphExecutionStage)executionStage value:(uint64_t)value;
- (void)waitForANEPrePowerUpEvent:(id)a3 value:(unint64_t)a4;
- (void)waitForEvent:(id)event value:(uint64_t)value;
@end

@implementation MPSGraphExecutionDescriptor

- (MPSGraphExecutionDescriptor)init
{
  v11.receiver = self;
  v11.super_class = MPSGraphExecutionDescriptor;
  v2 = [(MPSGraphExecutionDescriptor *)&v11 init];
  compilationDescriptor = v2->_compilationDescriptor;
  v2->_compilationDescriptor = 0;

  v2->_enableCommitAndContinue = 1;
  v2->_enableProfilingOpNames = 0;
  v2->_briefProfilingOpNames = 0;
  v2->_simulateANECompileFailure = 0;
  v2->_simulateANELoadModelFailure = 0;
  v2->_breakUpMetalEncoders = 0;
  v2->_generateRuntimeExecutionReport = 0;
  v4 = objc_opt_new();
  waitEvents = v2->_waitEvents;
  v2->_waitEvents = v4;

  v6 = objc_opt_new();
  anePowerWaitEvents = v2->_anePowerWaitEvents;
  v2->_anePowerWaitEvents = v6;

  v8 = objc_opt_new();
  signalEvents = v2->_signalEvents;
  v2->_signalEvents = v8;

  v2->_maximumNumberOfEncodingThreads = 0;
  return v2;
}

- (void)waitForEvent:(id)event value:(uint64_t)value
{
  v7 = event;
  v6 = [[MPSGraphWaitEvent alloc] initWithEvent:v7 value:value];
  [(NSMutableArray *)self->_waitEvents addObject:v6];
}

- (void)waitForANEPrePowerUpEvent:(id)a3 value:(unint64_t)a4
{
  v7 = a3;
  [(NSMutableArray *)self->_anePowerWaitEvents count];
  if ([(NSMutableArray *)self->_anePowerWaitEvents count]&& MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v6 = [[MPSGraphWaitEvent alloc] initWithEvent:v7 value:a4];
  [(NSMutableArray *)self->_anePowerWaitEvents addObject:v6];
}

- (void)signalEvent:(id)event atExecutionEvent:(MPSGraphExecutionStage)executionStage value:(uint64_t)value
{
  v9 = event;
  v8 = [[MPSGraphSignalEvent alloc] initWithEvent:v9 executionStage:executionStage value:value];
  [(NSMutableArray *)self->_signalEvents addObject:v8];
}

@end