@interface BooksEngagementPluginProvider
+ (void)performRequestWithObject:(id)object completion:(id)completion;
- (_TtC24BooksEngagementExtension29BooksEngagementPluginProvider)init;
@end

@implementation BooksEngagementPluginProvider

+ (void)performRequestWithObject:(id)object completion:(id)completion
{
  v4 = _Block_copy(completion);
  swift_unknownObjectRetain();
  sub_10000A460();
  swift_unknownObjectRelease();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_100006A60(v6, ObjCClassMetadata, v4);
  _Block_release(v4);
  sub_10000750C(v6);
}

- (_TtC24BooksEngagementExtension29BooksEngagementPluginProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BooksEngagementPluginProvider();
  return [(BooksEngagementPluginProvider *)&v3 init];
}

@end