@interface PlaybackController
- (_TtC9MusicCore18PlaybackController)init;
- (id)requestedPropertySetForEngine:(id)a3;
- (void)engine:(id)a3 didEndSharedListeningSessionWithError:(id)a4;
- (void)engine:(id)a3 didFailToPlayFirstItem:(id)a4 withError:(id)a5;
- (void)engine:(id)a3 didPauseForLeaseEndWithError:(id)a4;
- (void)engine:(id)a3 didReceiveSharedListeningEvent:(id)a4;
- (void)engine:(id)a3 requiresAuthorizationToPlayItem:(id)a4 reason:(int64_t)a5 authorizationHandler:(id)a6;
@end

@implementation PlaybackController

- (id)requestedPropertySetForEngine:(id)a3
{
  if (qword_1011A6B38 != -1)
  {
    swift_once();
  }

  v4 = static SharedListening.Event.properties;

  return v4;
}

- (void)engine:(id)a3 didReceiveSharedListeningEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100A51E54(v7);
}

- (void)engine:(id)a3 didEndSharedListeningSessionWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100A520E0(a4);
}

- (void)engine:(id)a3 didPauseForLeaseEndWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100A523C4(a4);
}

- (void)engine:(id)a3 didFailToPlayFirstItem:(id)a4 withError:(id)a5
{
  sub_100009F78(0, &qword_1011A9F80);
  v8 = swift_allocObject();
  v8[2] = a5;
  v8[3] = self;
  v8[4] = a4;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = v10;
  v14 = v11;
  v13 = v9;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A53DDC, v8);
}

- (void)engine:(id)a3 requiresAuthorizationToPlayItem:(id)a4 reason:(int64_t)a5 authorizationHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_100009F78(0, &qword_1011A9F80);
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = self;
  v11[4] = a4;
  v11[5] = sub_100A52C38;
  v11[6] = v10;
  v12 = a4;
  v14 = self;
  v13 = v12;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A53DC4, v11);
}

- (_TtC9MusicCore18PlaybackController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end