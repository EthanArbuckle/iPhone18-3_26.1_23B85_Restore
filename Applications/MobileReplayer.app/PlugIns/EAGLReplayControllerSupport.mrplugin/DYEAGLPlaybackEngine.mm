@interface DYEAGLPlaybackEngine
- (BOOL)layerHasSameProperties:(id)a3 layer:(id)a4;
- (id)newFunctionPlayer;
@end

@implementation DYEAGLPlaybackEngine

- (id)newFunctionPlayer
{
  v3 = [DYEAGLFunctionPlayer alloc];
  v4 = [(DYEAGLPlaybackEngine *)self captureStore];
  v5 = [(DYEAGLFunctionPlayer *)v3 initWithCaptureStore:v4];

  [(DYEAGLFunctionPlayer *)v5 setLayerManager:self];
  return v5;
}

- (BOOL)layerHasSameProperties:(id)a3 layer:(id)a4
{
  v5 = a3;
  v6 = [a4 drawableProperties];
  v7 = [v6 isEqualToDictionary:v5];

  return v7;
}

@end