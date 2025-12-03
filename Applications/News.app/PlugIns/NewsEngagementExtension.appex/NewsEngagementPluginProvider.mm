@interface NewsEngagementPluginProvider
+ (void)performRequestWithObject:(id)object completion:(id)completion;
- (_TtC23NewsEngagementExtension28NewsEngagementPluginProvider)init;
@end

@implementation NewsEngagementPluginProvider

+ (void)performRequestWithObject:(id)object completion:(id)completion
{
  v4 = _Block_copy(completion);
  swift_unknownObjectRetain();
  sub_10000683C();
  swift_unknownObjectRelease();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_100004B30(v6, ObjCClassMetadata, v4);
  _Block_release(v4);
  sub_100002464(v6);
}

- (_TtC23NewsEngagementExtension28NewsEngagementPluginProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NewsEngagementPluginProvider *)&v3 init];
}

@end