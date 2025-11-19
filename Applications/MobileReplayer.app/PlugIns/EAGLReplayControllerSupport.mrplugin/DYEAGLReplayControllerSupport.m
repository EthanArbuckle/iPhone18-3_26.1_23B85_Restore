@interface DYEAGLReplayControllerSupport
- (BOOL)isDebugPlaybackEngine:(id)a3;
- (DYEAGLReplayControllerSupport)initWithCaptureStore:(id)a3;
- (id)createDebugPlaybackEngineWithCaptureStore:(id)a3;
- (id)createOverridingPlaybackEngineWithCaptureStore:(id)a3 experiment:(id)a4;
- (id)experimentResultsGeneratorForPlaybackEngine:(id)a3;
- (id)newShaderProfilerWithPlaybackEngine:(id)a3 payload:(id)a4;
- (id)startShaderProfiler:(id)a3;
- (id)viewControllerForPlaybackEngine:(id)a3;
- (void)_setupContextRemapperForPlaybackEngine:(id)a3;
- (void)disableDebugFunctions:(id)a3 playbackEngine:(id)a4;
- (void)enableDebugFunctions:(id)a3 playbackEngine:(id)a4;
@end

@implementation DYEAGLReplayControllerSupport

- (DYEAGLReplayControllerSupport)initWithCaptureStore:(id)a3
{
  v4 = a3;
  v5 = [v4 metadataValueForKey:kDYCaptureSessionGraphicsAPIMetadataKey];
  v6 = [v5 unsignedIntValue];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DYEAGLReplayControllerSupport;
    v7 = [(DYEAGLReplayControllerSupport *)&v9 init];
    if (v7)
    {
      DYSetNameReservationEncoding();
      self = v7;
      v7 = self;
    }

    else
    {
      self = 0;
    }
  }

  return v7;
}

- (void)disableDebugFunctions:(id)a3 playbackEngine:(id)a4
{
  v6 = a3;
  v5 = [a4 disabledFunctions];
  [v5 addIndexes:v6];
}

- (void)enableDebugFunctions:(id)a3 playbackEngine:(id)a4
{
  v6 = a3;
  v5 = [a4 disabledFunctions];
  [v5 removeIndexes:v6];
}

- (id)createOverridingPlaybackEngineWithCaptureStore:(id)a3 experiment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[DYGLExperimentResultsGenerator alloc] initWithExperiment:v7];
  v9 = [[DYEAGLOverridingPlaybackEngine alloc] initWithCaptureStore:v6 experimentResultsGenerator:v8];
  if (!v9)
  {
    __assert_rtn("[DYEAGLReplayControllerSupport createOverridingPlaybackEngineWithCaptureStore:experiment:]", &unk_1FD61, 0, "playbackEngine");
  }

  [(DYEAGLReplayControllerSupport *)self _setupContextRemapperForPlaybackEngine:v9];

  return v9;
}

- (id)createDebugPlaybackEngineWithCaptureStore:(id)a3
{
  v4 = a3;
  v5 = [[DYEAGLDebugPlaybackEngine alloc] initWithCaptureStore:v4];
  if (!v5)
  {
    __assert_rtn("[DYEAGLReplayControllerSupport createDebugPlaybackEngineWithCaptureStore:]", &unk_1FD61, 0, "playbackEngine");
  }

  [(DYEAGLReplayControllerSupport *)self _setupContextRemapperForPlaybackEngine:v5];

  return v5;
}

- (BOOL)isDebugPlaybackEngine:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)viewControllerForPlaybackEngine:(id)a3
{
  v3 = [a3 viewController];

  return v3;
}

- (id)experimentResultsGeneratorForPlaybackEngine:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 experimentResultsGenerator];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)newShaderProfilerWithPlaybackEngine:(id)a3 payload:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [[DYGLShaderProfilerFunctionPlayerSupport alloc] initWithDebugEAGLPlaybackEngine:v7 payLoad:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)startShaderProfiler:(id)a3
{
  v3 = [a3 queryShaderStart];

  return v3;
}

- (void)_setupContextRemapperForPlaybackEngine:(id)a3
{
  v4 = a3;
  v3 = v4;
  DYSetContextRemappingBlock();
}

@end