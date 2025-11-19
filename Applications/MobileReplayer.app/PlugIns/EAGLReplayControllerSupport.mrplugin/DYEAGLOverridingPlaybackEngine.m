@interface DYEAGLOverridingPlaybackEngine
- (DYEAGLOverridingPlaybackEngine)initWithCaptureStore:(id)a3 experimentResultsGenerator:(id)a4;
- (id)newFunctionPlayer;
@end

@implementation DYEAGLOverridingPlaybackEngine

- (DYEAGLOverridingPlaybackEngine)initWithCaptureStore:(id)a3 experimentResultsGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = DYEAGLOverridingPlaybackEngine;
  v8 = [(DYEAGLOverridingPlaybackEngine *)&v16 initWithCaptureStore:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_experimentResultsGenerator, a4);
    v10 = [(DYEAGLPlaybackEngine *)v9 eaglPlayer];
    [(DYGLExperimentResultsGenerator *)v9->_experimentResultsGenerator setFunctionPlayer:v10];

    v11 = [(DYGLExperimentResultsGenerator *)v9->_experimentResultsGenerator experiment];
    v12 = [v11 warmupCount];
    v13 = [(DYGLExperimentResultsGenerator *)v9->_experimentResultsGenerator experiment];
    -[DYEAGLOverridingPlaybackEngine setLoopCount:](v9, "setLoopCount:", [v13 repeatCount] + v12);

    v14 = v9;
  }

  return v9;
}

- (id)newFunctionPlayer
{
  v3 = [DYEAGLOverridingFunctionPlayer alloc];
  v4 = [(DYEAGLOverridingPlaybackEngine *)self captureStore];
  v5 = [(DYEAGLOverridingFunctionPlayer *)v3 initWithCaptureStore:v4];

  [(DYEAGLFunctionPlayer *)v5 setLayerManager:self];
  return v5;
}

@end