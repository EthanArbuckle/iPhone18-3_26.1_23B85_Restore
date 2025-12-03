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
  if (one-time initialization token for properties != -1)
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
  specialized PlaybackController.engine(_:didReceive:)(eventCopy);
}

- (void)engine:(id)engine didEndSharedListeningSessionWithError:(id)error
{
  engineCopy = engine;
  selfCopy = self;
  errorCopy = error;
  specialized PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(error);
}

- (void)engine:(id)engine didPauseForLeaseEndWithError:(id)error
{
  engineCopy = engine;
  selfCopy = self;
  errorCopy = error;
  specialized PlaybackController.engine(_:didPauseForLeaseEndWithError:)(error);
}

- (void)engine:(id)engine didFailToPlayFirstItem:(id)item withError:(id)error
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
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
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)partial apply, v8);
}

- (void)engine:(id)engine requiresAuthorizationToPlayItem:(id)item reason:(int64_t)reason authorizationHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v11 = swift_allocObject();
  v11[2] = reason;
  v11[3] = self;
  v11[4] = item;
  v11[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
  v11[6] = v10;
  itemCopy = item;
  selfCopy = self;
  v13 = itemCopy;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)partial apply, v11);
}

- (_TtC9MusicCore18PlaybackController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end