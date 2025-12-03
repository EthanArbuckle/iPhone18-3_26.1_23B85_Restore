@interface MainLoop
- (BOOL)sessionShouldAttemptRelocalization:(id)relocalization;
- (void)session:(id)session cameraDidChangeTrackingState:(id)state;
- (void)session:(id)session didAddAnchors:(id)anchors;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didRemoveAnchors:(id)anchors;
- (void)session:(id)session didUpdateAnchors:(id)anchors;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionWasInterrupted:(id)interrupted;
@end

@implementation MainLoop

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_1000E4A74(errorCopy);
}

- (void)sessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  selfCopy = self;
  sub_1000E4CDC();
}

- (void)sessionInterruptionEnded:(id)ended
{
  v3 = *(**(self + qword_1004A8420) + 400);
  selfCopy = self;

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

- (BOOL)sessionShouldAttemptRelocalization:(id)relocalization
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

- (void)session:(id)session cameraDidChangeTrackingState:(id)state
{
  sessionCopy = session;
  stateCopy = state;
  selfCopy = self;
  sub_1000E2FA4(sessionCopy);
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  sub_1000E377C(sessionCopy, frameCopy);
}

- (void)session:(id)session didUpdateAnchors:(id)anchors
{
  sub_100018630(0, &unk_1004A8730);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  selfCopy = self;
  v9._rawValue = v6;
  sub_1000E4E50(sessionCopy, v9);
}

- (void)session:(id)session didRemoveAnchors:(id)anchors
{
  sub_100018630(0, &unk_1004A8730);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  MeasureCore.shared.unsafeMutableAddressor();

  MeasureCore.didRemove(anchors:)(v4);

  type metadata accessor for WorldAnchor();
  static WorldAnchor.didRemove(anchors:)();
}

- (void)session:(id)session didAddAnchors:(id)anchors
{
  sub_100018630(0, &unk_1004A8730);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  selfCopy = self;
  sub_1000E5044(v6);
}

@end