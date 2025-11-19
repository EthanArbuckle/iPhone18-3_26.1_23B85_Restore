@interface UGCReviewedPlaceMapsSyncTrampoline
- (_TtC4Maps34UGCReviewedPlaceMapsSyncTrampoline)init;
- (void)dealloc;
- (void)reviewedPlaceObjectsDidChange;
@end

@implementation UGCReviewedPlaceMapsSyncTrampoline

- (_TtC4Maps34UGCReviewedPlaceMapsSyncTrampoline)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC4Maps34UGCReviewedPlaceMapsSyncTrampoline_delegate] = 0;
  swift_unknownObjectWeakInit();
  if (qword_101906810 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100021540(v4, qword_101960250);
  (*(*(v4 - 8) + 16))(self + OBJC_IVAR____TtC4Maps34UGCReviewedPlaceMapsSyncTrampoline_logger, v5, v4);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v6 = [(UGCReviewedPlaceMapsSyncTrampoline *)&v11 init];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 sharedInstance];
  [v9 registerObserver:v8];

  return v8;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 sharedInstance];
  [v6 unregisterObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(UGCReviewedPlaceMapsSyncTrampoline *)&v7 dealloc];
}

- (void)reviewedPlaceObjectsDidChange
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = self + OBJC_IVAR____TtC4Maps34UGCReviewedPlaceMapsSyncTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(v6 + 1);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = self;
    v11[5] = v8;
    v11[6] = v9;
    v12 = self;
    sub_10020AAE4(0, 0, v5, &unk_1012048F0, v11);
  }
}

@end