@interface RenderLoop
- (id)renderer:(id)renderer nodeForAnchor:(id)anchor;
- (void)renderer:(id)renderer didRemoveNode:(id)node forAnchor:(id)anchor;
- (void)renderer:(id)renderer updateAtTime:(double)time;
@end

@implementation RenderLoop

- (void)renderer:(id)renderer updateAtTime:(double)time
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100170144(renderer, time);
  swift_unknownObjectRelease();
}

- (id)renderer:(id)renderer nodeForAnchor:(id)anchor
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = objc_allocWithZone(SCNNode);
    anchorCopy = anchor;
    v13 = [v11 init];
    strcpy(v21, "arkit_plane_");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    identifier = [v10 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19 = String._bridgeToObjectiveC()();

    [v13 setName:v19];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)renderer:(id)renderer didRemoveNode:(id)node forAnchor:(id)anchor
{
  swift_unknownObjectRetain();
  nodeCopy = node;
  anchorCopy = anchor;
  selfCopy = self;
  sub_1001719E8(anchorCopy);
  swift_unknownObjectRelease();
}

@end