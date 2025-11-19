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
  if (one-time initialization token for properties != -1)
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
  specialized PlaybackController.engine(_:didReceive:)(v7);
}

- (void)engine:(id)a3 didEndSharedListeningSessionWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  specialized PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(a4);
}

- (void)engine:(id)a3 didPauseForLeaseEndWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  specialized PlaybackController.engine(_:didPauseForLeaseEndWithError:)(a4);
}

- (void)engine:(id)a3 didFailToPlayFirstItem:(id)a4 withError:(id)a5
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
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
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)partial apply, v8);
}

- (void)engine:(id)a3 requiresAuthorizationToPlayItem:(id)a4 reason:(int64_t)a5 authorizationHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = self;
  v11[4] = a4;
  v11[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
  v11[6] = v10;
  v12 = a4;
  v14 = self;
  v13 = v12;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)partial apply, v11);
}

- (_TtC9MusicCore18PlaybackController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end