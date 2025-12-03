@interface LockdownModeManager
- (_TtC5Setup19LockdownModeManager)init;
- (void)acknowledgeWithCompletionHandler:(id)handler;
- (void)enableWithStrategy:(int64_t)strategy completionHandler:(id)handler;
- (void)fetchAccountStateWithCompletionHandler:(id)handler;
@end

@implementation LockdownModeManager

- (void)fetchAccountStateWithCompletionHandler:(id)handler
{
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100298E88;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100298E90;
  v12[5] = v11;
  selfCopy = self;
  sub_100063A28(0, 0, v7, &unk_100298E98, v12);
}

- (void)enableWithStrategy:(int64_t)strategy completionHandler:(id)handler
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = strategy;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100298E68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100298E70;
  v14[5] = v13;
  selfCopy = self;
  sub_100063A28(0, 0, v9, &unk_100298E78, v14);
}

- (void)acknowledgeWithCompletionHandler:(id)handler
{
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100298E58;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100297310;
  v12[5] = v11;
  selfCopy = self;
  sub_100063A28(0, 0, v7, &unk_1002979A0, v12);
}

- (_TtC5Setup19LockdownModeManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC5Setup19LockdownModeManager____lazy_storage___manager) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC5Setup19LockdownModeManager_hasStagedEnablement) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LockdownModeManager();
  return [(LockdownModeManager *)&v3 init];
}

@end