@interface AAKEngagementPluginProvider
+ (void)performRequestWithObject:(id)a3 completion:(id)a4;
- (_TtC35AdAttributionKitEngagementExtension27AAKEngagementPluginProvider)init;
@end

@implementation AAKEngagementPluginProvider

+ (void)performRequestWithObject:(id)a3 completion:(id)a4
{
  v7 = (*(*(sub_100001BD0(&qword_10000C420, &qword_100003C98) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_100003684();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100003CA8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100003CB8;
  v14[5] = v13;
  swift_unknownObjectRetain();
  sub_100002690(0, 0, v9, &unk_100003CC8, v14);
}

- (_TtC35AdAttributionKitEngagementExtension27AAKEngagementPluginProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AAKEngagementPluginProvider *)&v3 init];
}

@end