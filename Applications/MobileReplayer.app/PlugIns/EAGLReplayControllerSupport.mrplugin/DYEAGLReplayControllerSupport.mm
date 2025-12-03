@interface DYEAGLReplayControllerSupport
- (BOOL)isDebugPlaybackEngine:(id)engine;
- (DYEAGLReplayControllerSupport)initWithCaptureStore:(id)store;
- (id)createDebugPlaybackEngineWithCaptureStore:(id)store;
- (id)createOverridingPlaybackEngineWithCaptureStore:(id)store experiment:(id)experiment;
- (id)experimentResultsGeneratorForPlaybackEngine:(id)engine;
- (id)newShaderProfilerWithPlaybackEngine:(id)engine payload:(id)payload;
- (id)startShaderProfiler:(id)profiler;
- (id)viewControllerForPlaybackEngine:(id)engine;
- (void)_setupContextRemapperForPlaybackEngine:(id)engine;
- (void)disableDebugFunctions:(id)functions playbackEngine:(id)engine;
- (void)enableDebugFunctions:(id)functions playbackEngine:(id)engine;
@end

@implementation DYEAGLReplayControllerSupport

- (DYEAGLReplayControllerSupport)initWithCaptureStore:(id)store
{
  storeCopy = store;
  v5 = [storeCopy metadataValueForKey:kDYCaptureSessionGraphicsAPIMetadataKey];
  unsignedIntValue = [v5 unsignedIntValue];

  if (unsignedIntValue)
  {
    selfCopy = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DYEAGLReplayControllerSupport;
    selfCopy = [(DYEAGLReplayControllerSupport *)&v9 init];
    if (selfCopy)
    {
      DYSetNameReservationEncoding();
      self = selfCopy;
      selfCopy = self;
    }

    else
    {
      self = 0;
    }
  }

  return selfCopy;
}

- (void)disableDebugFunctions:(id)functions playbackEngine:(id)engine
{
  functionsCopy = functions;
  disabledFunctions = [engine disabledFunctions];
  [disabledFunctions addIndexes:functionsCopy];
}

- (void)enableDebugFunctions:(id)functions playbackEngine:(id)engine
{
  functionsCopy = functions;
  disabledFunctions = [engine disabledFunctions];
  [disabledFunctions removeIndexes:functionsCopy];
}

- (id)createOverridingPlaybackEngineWithCaptureStore:(id)store experiment:(id)experiment
{
  storeCopy = store;
  experimentCopy = experiment;
  v8 = [[DYGLExperimentResultsGenerator alloc] initWithExperiment:experimentCopy];
  v9 = [[DYEAGLOverridingPlaybackEngine alloc] initWithCaptureStore:storeCopy experimentResultsGenerator:v8];
  if (!v9)
  {
    __assert_rtn("[DYEAGLReplayControllerSupport createOverridingPlaybackEngineWithCaptureStore:experiment:]", &unk_1FD61, 0, "playbackEngine");
  }

  [(DYEAGLReplayControllerSupport *)self _setupContextRemapperForPlaybackEngine:v9];

  return v9;
}

- (id)createDebugPlaybackEngineWithCaptureStore:(id)store
{
  storeCopy = store;
  v5 = [[DYEAGLDebugPlaybackEngine alloc] initWithCaptureStore:storeCopy];
  if (!v5)
  {
    __assert_rtn("[DYEAGLReplayControllerSupport createDebugPlaybackEngineWithCaptureStore:]", &unk_1FD61, 0, "playbackEngine");
  }

  [(DYEAGLReplayControllerSupport *)self _setupContextRemapperForPlaybackEngine:v5];

  return v5;
}

- (BOOL)isDebugPlaybackEngine:(id)engine
{
  engineCopy = engine;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)viewControllerForPlaybackEngine:(id)engine
{
  viewController = [engine viewController];

  return viewController;
}

- (id)experimentResultsGeneratorForPlaybackEngine:(id)engine
{
  engineCopy = engine;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    experimentResultsGenerator = [engineCopy experimentResultsGenerator];
  }

  else
  {
    experimentResultsGenerator = 0;
  }

  return experimentResultsGenerator;
}

- (id)newShaderProfilerWithPlaybackEngine:(id)engine payload:(id)payload
{
  engineCopy = engine;
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = engineCopy;
    v8 = [[DYGLShaderProfilerFunctionPlayerSupport alloc] initWithDebugEAGLPlaybackEngine:v7 payLoad:payloadCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)startShaderProfiler:(id)profiler
{
  queryShaderStart = [profiler queryShaderStart];

  return queryShaderStart;
}

- (void)_setupContextRemapperForPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v3 = engineCopy;
  DYSetContextRemappingBlock();
}

@end