@interface VisitsLoader
+ (void)shouldShowNotificationWithCompletionHandler:(id)handler;
- (_TtC4Maps12VisitsLoader)init;
- (void)loadVisitsWithCompletionHandler:(id)handler;
@end

@implementation VisitsLoader

- (void)loadVisitsWithCompletionHandler:(id)handler
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
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
  v11[4] = &unk_101207738;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1011F9360;
  v12[5] = v11;
  selfCopy = self;
  sub_10054DB08(0, 0, v7, &unk_1011F66B0, v12);
}

+ (void)shouldShowNotificationWithCompletionHandler:(id)handler
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_101207748;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_101207750;
  v12[5] = v11;
  sub_10054DB08(0, 0, v7, &unk_101207758, v12);
}

- (_TtC4Maps12VisitsLoader)init
{
  static Date.distantPast.getter();
  v3 = OBJC_IVAR____TtC4Maps12VisitsLoader_minTimeBetweenRuns;
  GEOConfigGetDouble();
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for VisitsLoader(0);
  return [(VisitsLoader *)&v6 init];
}

@end