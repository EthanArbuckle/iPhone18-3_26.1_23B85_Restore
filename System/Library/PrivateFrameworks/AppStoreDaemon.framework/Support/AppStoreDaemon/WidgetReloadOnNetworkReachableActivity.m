@interface WidgetReloadOnNetworkReachableActivity
+ (_TtC9appstored38WidgetReloadOnNetworkReachableActivity)sharedActivity;
- (_TtC9appstored38WidgetReloadOnNetworkReachableActivity)init;
- (void)bootstrapWithCompletionHandler:(id)a3;
- (void)scheduleWithEndpoint:(id)a3 parameters:(id)a4;
@end

@implementation WidgetReloadOnNetworkReachableActivity

+ (_TtC9appstored38WidgetReloadOnNetworkReachableActivity)sharedActivity
{
  if (qword_10059B4F8 != -1)
  {
    swift_once();
  }

  return v2;
}

- (void)bootstrapWithCompletionHandler:(id)a3
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100436DE0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;

  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (void)scheduleWithEndpoint:(id)a3 parameters:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_100109908(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (_TtC9appstored38WidgetReloadOnNetworkReachableActivity)init
{
  v3 = type metadata accessor for ContinuousClock();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = &self->$defaultActor[OBJC_IVAR____TtC9appstored38WidgetReloadOnNetworkReachableActivity_backoff];
  static Clock<>.continuous.getter();
  v8 = sub_100085D40(&qword_10059D468);
  *&v7[v8[12]] = 0;
  v9 = v8[13];
  v10 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  *v7 = xmmword_100436CE0;
  *(v7 + 1) = xmmword_100436CF0;
  *(v7 + 4) = 0;
  (*(v4 + 32))(&v7[v8[11]], v6, v3);
  *&self->$defaultActor[OBJC_IVAR____TtC9appstored38WidgetReloadOnNetworkReachableActivity_activity] = 0;
  v11 = type metadata accessor for WidgetReloadOnNetworkReachableActivity(0);
  v13.receiver = self;
  v13.super_class = v11;
  return [(WidgetReloadOnNetworkReachableActivity *)&v13 init];
}

@end