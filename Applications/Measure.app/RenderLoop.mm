@interface RenderLoop
- (id)renderer:(id)a3 nodeForAnchor:(id)a4;
- (void)renderer:(id)a3 didRemoveNode:(id)a4 forAnchor:(id)a5;
- (void)renderer:(id)a3 updateAtTime:(double)a4;
@end

@implementation RenderLoop

- (void)renderer:(id)a3 updateAtTime:(double)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_100170144(a3, a4);
  swift_unknownObjectRelease();
}

- (id)renderer:(id)a3 nodeForAnchor:(id)a4
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
    v12 = a4;
    v13 = [v11 init];
    strcpy(v21, "arkit_plane_");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    v14 = [v10 identifier];
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

- (void)renderer:(id)a3 didRemoveNode:(id)a4 forAnchor:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a5;
  v10 = self;
  sub_1001719E8(v9);
  swift_unknownObjectRelease();
}

@end