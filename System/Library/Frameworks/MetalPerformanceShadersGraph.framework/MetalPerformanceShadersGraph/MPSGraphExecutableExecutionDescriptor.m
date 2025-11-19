@interface MPSGraphExecutableExecutionDescriptor
- (MPSGraphExecutableExecutionDescriptor)init;
- (MPSGraphExecutableExecutionDescriptor)initWithGraphExecutionDescriptor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)requestProfilingStatsWithDictionary:(id)a3 profilingCallback:(id)a4;
- (void)signalEvent:(id)event atExecutionEvent:(MPSGraphExecutionStage)executionStage value:(uint64_t)value;
- (void)waitForANEPrePowerUpEvent:(id)a3 value:(unint64_t)a4;
- (void)waitForEvent:(id)event value:(uint64_t)value;
@end

@implementation MPSGraphExecutableExecutionDescriptor

- (void)requestProfilingStatsWithDictionary:(id)a3 profilingCallback:(id)a4
{
  v13 = a3;
  v6 = MEMORY[0x1E12E6580](a4);
  profilingCallback = self->_profilingCallback;
  self->_profilingCallback = v6;

  v8 = [v13 mutableCopy];
  profilingDictionary = self->_profilingDictionary;
  self->_profilingDictionary = v8;

  v10 = [(NSMutableDictionary *)self->_profilingDictionary objectForKey:@"MPSGRAPH_PROFILING_BEFORE_FIRST_COMMIT_TIMESTAMP"];

  if (v10)
  {
    self->_profilingBitmap |= 1uLL;
  }

  v11 = [(NSMutableDictionary *)self->_profilingDictionary objectForKey:@"MPSGRAPH_PROFILING_AFTER_FIRST_COMMIT_TIMESTAMP"];

  if (v11)
  {
    self->_profilingBitmap |= 2uLL;
  }

  v12 = [(NSMutableDictionary *)self->_profilingDictionary objectForKey:@"MPSGRAPH_PROFILING_FIRST_MTLCOMMANDBUFFER_SCHEDULED_TIMESTAMP"];

  if (v12)
  {
    self->_profilingBitmap |= 4uLL;
  }
}

- (MPSGraphExecutableExecutionDescriptor)init
{
  v15.receiver = self;
  v15.super_class = MPSGraphExecutableExecutionDescriptor;
  v2 = [(MPSGraphExecutableExecutionDescriptor *)&v15 init];
  v2->_waitUntilCompleted = 0;
  completionHandler = v2->_completionHandler;
  v2->_completionHandler = 0;

  scheduledHandler = v2->_scheduledHandler;
  v2->_scheduledHandler = 0;

  scheduledGraphHandler = v2->_scheduledGraphHandler;
  v2->_scheduledGraphHandler = 0;

  completionGraphHandler = v2->_completionGraphHandler;
  v2->_completionGraphHandler = 0;

  v2->_enableCommitAndContinue = 1;
  v2->_enableProfilingOpNames = 0;
  v2->_briefProfilingOpNames = 0;
  v2->_simulateANECompileFailure = 0;
  v2->_simulateANELoadModelFailure = 0;
  v2->_breakUpMetalEncoders = 0;
  v2->_generateRuntimeExecutionReport = 0;
  waitEvents = v2->_waitEvents;
  v2->_waitEvents = 0;

  anePowerWaitEvents = v2->_anePowerWaitEvents;
  v2->_anePowerWaitEvents = 0;

  signalEvents = v2->_signalEvents;
  v2->_signalEvents = 0;

  v2->_maximumNumberOfEncodingThreads = 0;
  v2->_disableSynchronizeResults = 0;
  profilingCallback = v2->_profilingCallback;
  v2->_profilingCallback = 0;

  profilingDictionary = v2->_profilingDictionary;
  v2->_profilingDictionary = 0;

  v2->_profilingBitmap = 0;
  v2->_numberOfCommitsByMPSGraph = 0;
  v2->_disableANECaching = 0;
  v2->_disableANEFallback = 0;
  entryFunctionName = v2->_entryFunctionName;
  v2->_entryFunctionName = 0;

  perEntryPointToSymbolAndFileNameMap = v2->_perEntryPointToSymbolAndFileNameMap;
  v2->_perEntryPointToSymbolAndFileNameMap = 0;

  v2->_compilationOnly = 0;
  v2->_encodeANESync = 0;
  v2->_encodeANEDisableSharedEvents = 0;
  return v2;
}

- (MPSGraphExecutableExecutionDescriptor)initWithGraphExecutionDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(MPSGraphExecutableExecutionDescriptor *)self init];
  v5->_waitUntilCompleted = [v4 waitUntilCompleted];
  completionHandler = v5->_completionHandler;
  v5->_completionHandler = 0;

  scheduledHandler = v5->_scheduledHandler;
  v5->_scheduledHandler = 0;

  v8 = [v4 scheduledHandler];
  scheduledGraphHandler = v5->_scheduledGraphHandler;
  v5->_scheduledGraphHandler = v8;

  v10 = [v4 completionHandler];
  completionGraphHandler = v5->_completionGraphHandler;
  v5->_completionGraphHandler = v10;

  v5->_enableCommitAndContinue = [v4 enableCommitAndContinue];
  v5->_enableProfilingOpNames = [v4 enableProfilingOpNames];
  v5->_briefProfilingOpNames = [v4 briefProfilingOpNames];
  v5->_simulateANECompileFailure = [v4 simulateANECompileFailure];
  v5->_simulateANELoadModelFailure = [v4 simulateANELoadModelFailure];
  v5->_breakUpMetalEncoders = [v4 breakUpMetalEncoders];
  v5->_generateRuntimeExecutionReport = [v4 generateRuntimeExecutionReport];
  objc_storeStrong(&v5->_waitEvents, v4[1]);
  objc_storeStrong(&v5->_anePowerWaitEvents, v4[3]);
  objc_storeStrong(&v5->_signalEvents, v4[2]);
  v5->_maximumNumberOfEncodingThreads = [v4 maximumNumberOfEncodingThreads];
  v5->_disableSynchronizeResults = [v4 disableSynchronizeResults];
  v5->_disableANECaching = [v4 disableANECaching];
  v5->_disableANEFallback = [v4 disableANEFallback];
  entryFunctionName = v5->_entryFunctionName;
  v5->_entryFunctionName = 0;

  perEntryPointToSymbolAndFileNameMap = v5->_perEntryPointToSymbolAndFileNameMap;
  v5->_perEntryPointToSymbolAndFileNameMap = 0;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphExecutableExecutionDescriptor alloc];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setCompletionHandler:self->_completionHandler];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setScheduledHandler:self->_scheduledHandler];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setScheduledGraphHandler:self->_scheduledGraphHandler];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setCompletionGraphHandler:self->_completionGraphHandler];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setEnableCommitAndContinue:self->_enableCommitAndContinue];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setEnableProfilingOpNames:self->_enableProfilingOpNames];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setBriefProfilingOpNames:self->_briefProfilingOpNames];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setSimulateANECompileFailure:self->_simulateANECompileFailure];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setSimulateANELoadModelFailure:self->_simulateANELoadModelFailure];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setBreakUpMetalEncoders:self->_breakUpMetalEncoders];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setGenerateRuntimeExecutionReport:self->_generateRuntimeExecutionReport];
  v5 = [(NSMutableArray *)self->_waitEvents copy];
  waitEvents = v4->_waitEvents;
  v4->_waitEvents = v5;

  v7 = [(NSMutableArray *)self->_signalEvents copy];
  signalEvents = v4->_signalEvents;
  v4->_signalEvents = v7;

  [(MPSGraphExecutableExecutionDescriptor *)v4 setMaximumNumberOfEncodingThreads:self->_maximumNumberOfEncodingThreads];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setDisableSynchronizeResults:self->_disableSynchronizeResults];
  v9 = MEMORY[0x1E12E6580](self->_profilingCallback);
  profilingCallback = v4->_profilingCallback;
  v4->_profilingCallback = v9;

  v11 = [(NSMutableDictionary *)self->_profilingDictionary mutableCopy];
  profilingDictionary = v4->_profilingDictionary;
  v4->_profilingDictionary = v11;

  v4->_profilingBitmap = self->_profilingBitmap;
  v4->_numberOfCommitsByMPSGraph = self->_numberOfCommitsByMPSGraph;
  v4->_disableANECaching = self->_disableANECaching;
  v4->_disableANEFallback = self->_disableANEFallback;
  [(MPSGraphExecutableExecutionDescriptor *)v4 setEncodeANESync:self->_encodeANESync];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setEncodeANEDisableSharedEvents:self->_encodeANEDisableSharedEvents];
  v13 = [(NSString *)self->_entryFunctionName copy];
  [(MPSGraphExecutableExecutionDescriptor *)v4 setEntryFunctionName:v13];

  [(MPSGraphExecutableExecutionDescriptor *)v4 setPerEntryPointToSymbolAndFileNameMap:self->_perEntryPointToSymbolAndFileNameMap];
  return v4;
}

- (void)waitForEvent:(id)event value:(uint64_t)value
{
  v10 = event;
  v6 = [[MPSGraphWaitEvent alloc] initWithEvent:v10 value:value];
  waitEvents = self->_waitEvents;
  if (!waitEvents)
  {
    v8 = objc_opt_new();
    v9 = self->_waitEvents;
    self->_waitEvents = v8;

    waitEvents = self->_waitEvents;
  }

  [(NSMutableArray *)waitEvents addObject:v6];
}

- (void)signalEvent:(id)event atExecutionEvent:(MPSGraphExecutionStage)executionStage value:(uint64_t)value
{
  v12 = event;
  v8 = [[MPSGraphSignalEvent alloc] initWithEvent:v12 executionStage:executionStage value:value];
  signalEvents = self->_signalEvents;
  if (!signalEvents)
  {
    v10 = objc_opt_new();
    v11 = self->_signalEvents;
    self->_signalEvents = v10;

    signalEvents = self->_signalEvents;
  }

  [(NSMutableArray *)signalEvents addObject:v8];
}

- (void)waitForANEPrePowerUpEvent:(id)a3 value:(unint64_t)a4
{
  v10 = a3;
  anePowerWaitEvents = self->_anePowerWaitEvents;
  if (!anePowerWaitEvents)
  {
    v7 = objc_opt_new();
    v8 = self->_anePowerWaitEvents;
    self->_anePowerWaitEvents = v7;

    anePowerWaitEvents = self->_anePowerWaitEvents;
  }

  [(NSMutableArray *)anePowerWaitEvents count];
  if ([(NSMutableArray *)self->_anePowerWaitEvents count]&& MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = [[MPSGraphWaitEvent alloc] initWithEvent:v10 value:a4];
  [(NSMutableArray *)self->_anePowerWaitEvents addObject:v9];
}

@end