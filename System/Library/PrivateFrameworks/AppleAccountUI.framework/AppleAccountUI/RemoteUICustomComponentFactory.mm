@interface RemoteUICustomComponentFactory
+ (void)registerRemoteUISwiftViews;
@end

@implementation RemoteUICustomComponentFactory

+ (void)registerRemoteUISwiftViews
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static CustomComponentFactory.registerRemoteUISwiftViews()();
}

@end