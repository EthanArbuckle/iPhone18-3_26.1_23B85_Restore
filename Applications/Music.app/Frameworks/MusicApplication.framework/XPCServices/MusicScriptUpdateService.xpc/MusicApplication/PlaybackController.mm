@interface PlaybackController
- (_TtC9MusicCore18PlaybackController)init;
- (id)requestedPropertySetForEngine:(id)engine;
- (void)engine:(id)engine didEndSharedListeningSessionWithError:(id)error;
- (void)engine:(id)engine didFailToPlayFirstItem:(id)item withError:(id)error;
- (void)engine:(id)engine didPauseForLeaseEndWithError:(id)error;
- (void)engine:(id)engine didReceiveSharedListeningEvent:(id)event;
- (void)engine:(id)engine requiresAuthorizationToPlayItem:(id)item reason:(int64_t)reason authorizationHandler:(id)handler;
@end

@implementation PlaybackController

- (id)requestedPropertySetForEngine:(id)engine
{
  if (qword_100600128 != -1)
  {
    swift_once();
  }

  v4 = static SharedListening.Event.properties;

  return v4;
}

- (void)engine:(id)engine didReceiveSharedListeningEvent:(id)event
{
  engineCopy = engine;
  eventCopy = event;
  selfCopy = self;
  sub_1001F27F4(eventCopy);
}

- (void)engine:(id)engine didEndSharedListeningSessionWithError:(id)error
{
  engineCopy = engine;
  selfCopy = self;
  errorCopy = error;
  sub_1001F2A80(error);
}

- (void)engine:(id)engine didPauseForLeaseEndWithError:(id)error
{
  engineCopy = engine;
  selfCopy = self;
  errorCopy = error;
  sub_1001F2D64(error);
}

- (void)engine:(id)engine didFailToPlayFirstItem:(id)item withError:(id)error
{
  sub_100009130(0, &qword_100603570);
  v8 = swift_allocObject();
  v8[2] = error;
  v8[3] = self;
  v8[4] = item;
  itemCopy = item;
  errorCopy = error;
  selfCopy = self;
  v12 = errorCopy;
  v14 = selfCopy;
  v13 = itemCopy;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F504C, v8);
}

- (void)engine:(id)engine requiresAuthorizationToPlayItem:(id)item reason:(int64_t)reason authorizationHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_100009130(0, &qword_100603570);
  v11 = swift_allocObject();
  v11[2] = reason;
  v11[3] = self;
  v11[4] = item;
  v11[5] = sub_1001F36A4;
  v11[6] = v10;
  itemCopy = item;
  selfCopy = self;
  v13 = itemCopy;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F4FFC, v11);
}

- (_TtC9MusicCore18PlaybackController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end