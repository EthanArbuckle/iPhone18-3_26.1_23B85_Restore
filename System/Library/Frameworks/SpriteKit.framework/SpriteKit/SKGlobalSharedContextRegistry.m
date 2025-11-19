@interface SKGlobalSharedContextRegistry
+ (id)globalGLSharedContext;
+ (id)globalMetalDevice;
@end

@implementation SKGlobalSharedContextRegistry

+ (id)globalGLSharedContext
{
  SKEnsureGlobalGLShareContext();
  v2 = _glShareContext;

  return v2;
}

+ (id)globalMetalDevice
{
  SKEnsureGlobalMetalDevice();
  v2 = _metalDevice;

  return v2;
}

@end