@interface UISApplicationInitializationContext
+ (id)clb_contextForDisplayStyle:(int64_t)style canRequestScenes:(BOOL)scenes;
@end

@implementation UISApplicationInitializationContext

+ (id)clb_contextForDisplayStyle:(int64_t)style canRequestScenes:(BOOL)scenes
{
  scenesCopy = scenes;
  BSDispatchQueueAssertMain();
  v7 = [self alloc];
  v8 = [UISDisplayContext clb_contextForDisplayStyle:style];
  v9 = [UISDeviceContext clb_contextForDisplayStyle:style];
  v10 = [v7 initWithMainDisplayContext:v8 launchDisplayContext:0 deviceContext:v9 persistedSceneIdentifiers:0 supportAppSceneRequests:scenesCopy];

  return v10;
}

@end