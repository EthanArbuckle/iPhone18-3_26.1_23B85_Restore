@interface TestFlightExtensionSyncActivityManagerObjC
+ (void)bootstrapWithCompletionHandler:(id)a3;
- (_TtC9appstored42TestFlightExtensionSyncActivityManagerObjC)init;
@end

@implementation TestFlightExtensionSyncActivityManagerObjC

+ (void)bootstrapWithCompletionHandler:(id)a3
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100436F90;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored42TestFlightExtensionSyncActivityManagerObjC)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TestFlightExtensionSyncActivityManagerObjC *)&v3 init];
}

@end