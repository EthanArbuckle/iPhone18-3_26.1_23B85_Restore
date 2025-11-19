@interface MainLoop
- (BOOL)sessionShouldAttemptRelocalization:(id)a3;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didAddAnchors:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didRemoveAnchors:(id)a4;
- (void)session:(id)a3 didUpdateAnchors:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionWasInterrupted:(id)a3;
@end

@implementation MainLoop

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1000E4A74(v8);
}

- (void)sessionWasInterrupted:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E4CDC();
}

- (void)sessionInterruptionEnded:(id)a3
{
  v3 = *(**(self + qword_1004A8420) + 400);
  v4 = self;

  v5 = v3(v9);
  v7 = *v6;
  *v6 = 1;
  sub_1000E5770(v7);
  v5(v9, 0);

  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  v8._object = 0x80000001004066E0;
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  Log.default(_:isPrivate:)(v8, 0);
  sub_1000E25F8();
}

- (BOOL)sessionShouldAttemptRelocalization:(id)a3
{
  v3 = *(self + qword_1004A8460);
  if (*(v3 + 24) != 1)
  {
    return byte_1004D4FB8;
  }

  result = 0;
  *(v3 + 24) = 0;
  return result;
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000E2FA4(v6);
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000E377C(v6, v7);
}

- (void)session:(id)a3 didUpdateAnchors:(id)a4
{
  sub_100018630(0, &unk_1004A8730);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  v9._rawValue = v6;
  sub_1000E4E50(v7, v9);
}

- (void)session:(id)a3 didRemoveAnchors:(id)a4
{
  sub_100018630(0, &unk_1004A8730);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  MeasureCore.shared.unsafeMutableAddressor();

  MeasureCore.didRemove(anchors:)(v4);

  type metadata accessor for WorldAnchor();
  static WorldAnchor.didRemove(anchors:)();
}

- (void)session:(id)a3 didAddAnchors:(id)a4
{
  sub_100018630(0, &unk_1004A8730);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1000E5044(v6);
}

@end