@interface PlaybackSyncer.AVCoordinatorDelegateBridge
- (_TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge)init;
- (id)localParticipantUUIDForPlaybackCoordinator:(id)a3;
- (void)playbackCoordinator:(id)a3 broadcastLocalParticipantStateDictionary:(id)a4;
- (void)playbackCoordinator:(id)a3 broadcastTransportControlStateDictionary:(id)a4 forItemWithIdentifier:(id)a5;
- (void)playbackCoordinator:(id)a3 promptForLeaveOrEndSessionAllowingCancellation:(BOOL)a4 completionHandler:(id)a5;
- (void)playbackCoordinator:(id)a3 reloadTransportControlStateForItemWithIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation PlaybackSyncer.AVCoordinatorDelegateBridge

- (id)localParticipantUUIDForPlaybackCoordinator:(id)a3
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = self;
  PlaybackSyncer.AVCoordinatorDelegateBridge.localParticipantUUID(for:)(v9);

  v12.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);

  return v12.super.isa;
}

- (void)playbackCoordinator:(id)a3 broadcastLocalParticipantStateDictionary:(id)a4
{
  type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x60);
  v10 = self;
  if (v5())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    (*(v7 + 8))(isa, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)playbackCoordinator:(id)a3 broadcastTransportControlStateDictionary:(id)a4 forItemWithIdentifier:(id)a5
{
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x60);
  v10 = self;
  if (v9())
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    (*(v12 + 16))(v6, v8, isa, ObjectType, v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)playbackCoordinator:(id)a3 reloadTransportControlStateForItemWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x60);
  v12 = self;
  if (v11())
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    (*(v14 + 24))(v7, v9, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v10, ObjectType, v14);
    swift_unknownObjectRelease();
  }
}

- (_TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)playbackCoordinator:(id)a3 promptForLeaveOrEndSessionAllowingCancellation:(BOOL)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  specialized PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:)(a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v9);
}

@end