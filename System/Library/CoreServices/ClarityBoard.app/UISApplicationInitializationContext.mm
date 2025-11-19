@interface UISApplicationInitializationContext
+ (id)clb_contextForDisplayStyle:(int64_t)a3 canRequestScenes:(BOOL)a4;
@end

@implementation UISApplicationInitializationContext

+ (id)clb_contextForDisplayStyle:(int64_t)a3 canRequestScenes:(BOOL)a4
{
  v4 = a4;
  BSDispatchQueueAssertMain();
  v7 = [a1 alloc];
  v8 = [UISDisplayContext clb_contextForDisplayStyle:a3];
  v9 = [UISDeviceContext clb_contextForDisplayStyle:a3];
  v10 = [v7 initWithMainDisplayContext:v8 launchDisplayContext:0 deviceContext:v9 persistedSceneIdentifiers:0 supportAppSceneRequests:v4];

  return v10;
}

@end