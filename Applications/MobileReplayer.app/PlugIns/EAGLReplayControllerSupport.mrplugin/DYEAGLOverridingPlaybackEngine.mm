@interface DYEAGLOverridingPlaybackEngine
- (DYEAGLOverridingPlaybackEngine)initWithCaptureStore:(id)store experimentResultsGenerator:(id)generator;
- (id)newFunctionPlayer;
@end

@implementation DYEAGLOverridingPlaybackEngine

- (DYEAGLOverridingPlaybackEngine)initWithCaptureStore:(id)store experimentResultsGenerator:(id)generator
{
  storeCopy = store;
  generatorCopy = generator;
  v16.receiver = self;
  v16.super_class = DYEAGLOverridingPlaybackEngine;
  v8 = [(DYEAGLOverridingPlaybackEngine *)&v16 initWithCaptureStore:storeCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_experimentResultsGenerator, generator);
    eaglPlayer = [(DYEAGLPlaybackEngine *)v9 eaglPlayer];
    [(DYGLExperimentResultsGenerator *)v9->_experimentResultsGenerator setFunctionPlayer:eaglPlayer];

    experiment = [(DYGLExperimentResultsGenerator *)v9->_experimentResultsGenerator experiment];
    warmupCount = [experiment warmupCount];
    experiment2 = [(DYGLExperimentResultsGenerator *)v9->_experimentResultsGenerator experiment];
    -[DYEAGLOverridingPlaybackEngine setLoopCount:](v9, "setLoopCount:", [experiment2 repeatCount] + warmupCount);

    v14 = v9;
  }

  return v9;
}

- (id)newFunctionPlayer
{
  v3 = [DYEAGLOverridingFunctionPlayer alloc];
  captureStore = [(DYEAGLOverridingPlaybackEngine *)self captureStore];
  v5 = [(DYEAGLOverridingFunctionPlayer *)v3 initWithCaptureStore:captureStore];

  [(DYEAGLFunctionPlayer *)v5 setLayerManager:self];
  return v5;
}

@end