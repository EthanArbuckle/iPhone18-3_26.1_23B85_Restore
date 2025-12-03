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
  if (qword_E0CF78 != -1)
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
  sub_6DB6BC(eventCopy);
}

- (void)engine:(id)engine didEndSharedListeningSessionWithError:(id)error
{
  engineCopy = engine;
  selfCopy = self;
  errorCopy = error;
  sub_6DB948(error);
}

- (void)engine:(id)engine didPauseForLeaseEndWithError:(id)error
{
  engineCopy = engine;
  selfCopy = self;
  errorCopy = error;
  sub_6DBC2C(error);
}

- (void)engine:(id)engine didFailToPlayFirstItem:(id)item withError:(id)error
{
  sub_13C80(0, &qword_E103C0);
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
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DDDE4, v8);
}

- (void)engine:(id)engine requiresAuthorizationToPlayItem:(id)item reason:(int64_t)reason authorizationHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_13C80(0, &qword_E103C0);
  v11 = swift_allocObject();
  v11[2] = reason;
  v11[3] = self;
  v11[4] = item;
  v11[5] = sub_6DC4C8;
  v11[6] = v10;
  itemCopy = item;
  selfCopy = self;
  v13 = itemCopy;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DDD94, v11);
}

- (_TtC9MusicCore18PlaybackController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end