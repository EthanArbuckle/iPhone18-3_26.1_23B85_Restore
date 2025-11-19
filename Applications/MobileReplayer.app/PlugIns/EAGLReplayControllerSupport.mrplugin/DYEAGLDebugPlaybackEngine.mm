@interface DYEAGLDebugPlaybackEngine
- (DYEAGLDebugPlaybackEngine)initWithCaptureStore:(id)a3;
- (DYEAGLDebugPlaybackEngineDelegate)delegate;
- (DYEAGLDebugPlaybackEngineDelegate)strongDelegate;
- (id)newFunctionPlayer;
@end

@implementation DYEAGLDebugPlaybackEngine

- (DYEAGLDebugPlaybackEngine)initWithCaptureStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DYEAGLDebugPlaybackEngine;
  v5 = [(DYEAGLDebugPlaybackEngine *)&v12 initWithCaptureStore:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    disabledFunctions = v5->_disabledFunctions;
    v5->_disabledFunctions = v6;

    LODWORD(v8) = 1.0;
    [(DYEAGLDebugPlaybackEngine *)v5 setWireframeLineWidth:v8];
    LODWORD(v9) = 1.0;
    [(DYEAGLDebugPlaybackEngine *)v5 setTessellationWireframeLineWidth:v9];
    [(DYEAGLDebugPlaybackEngine *)v5 setWireframeLineColor:16711935];
    v5->_enableDrawCallPresent = 1;
    [(DYEAGLDebugPlaybackEngine *)v5 setEnableWireframePresent:1];
    v10 = v5;
  }

  return v5;
}

- (DYEAGLDebugPlaybackEngineDelegate)strongDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)newFunctionPlayer
{
  v3 = [DYEAGLDebugFunctionPlayer alloc];
  v4 = [(DYEAGLDebugPlaybackEngine *)self captureStore];
  v5 = [(DYEAGLDebugFunctionPlayer *)v3 initWithCaptureStore:v4];

  [(DYEAGLFunctionPlayer *)v5 setLayerManager:self];
  return v5;
}

- (DYEAGLDebugPlaybackEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end