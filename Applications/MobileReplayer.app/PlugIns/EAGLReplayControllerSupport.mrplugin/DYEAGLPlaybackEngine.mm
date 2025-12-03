@interface DYEAGLPlaybackEngine
- (BOOL)layerHasSameProperties:(id)properties layer:(id)layer;
- (id)newFunctionPlayer;
@end

@implementation DYEAGLPlaybackEngine

- (id)newFunctionPlayer
{
  v3 = [DYEAGLFunctionPlayer alloc];
  captureStore = [(DYEAGLPlaybackEngine *)self captureStore];
  v5 = [(DYEAGLFunctionPlayer *)v3 initWithCaptureStore:captureStore];

  [(DYEAGLFunctionPlayer *)v5 setLayerManager:self];
  return v5;
}

- (BOOL)layerHasSameProperties:(id)properties layer:(id)layer
{
  propertiesCopy = properties;
  drawableProperties = [layer drawableProperties];
  v7 = [drawableProperties isEqualToDictionary:propertiesCopy];

  return v7;
}

@end