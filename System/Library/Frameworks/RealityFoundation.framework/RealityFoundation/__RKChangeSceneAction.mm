@interface __RKChangeSceneAction
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKChangeSceneAction

- (id)copyWithZone:(void *)zone
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  v10 = *(&self->super.super.isa + v9);
  (*(v5 + 16))(v8, self + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier, v4);
  v11 = type metadata accessor for __RKChangeSceneAction();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v15 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(v14, v8);

  return v15;
}

@end