@interface CameraModel
- (_TtC13ClarityCamera11CameraModel)init;
- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6;
- (void)dealloc;
- (void)orientationChangedWithNotification:(id)a3;
- (void)sessionInterruptionEndedWithNotification:(id)a3;
- (void)sessionWasInterruptedWithNotification:(id)a3;
@end

@implementation CameraModel

- (void)dealloc
{
  v3 = sub_100003998(&qword_100035540, &qword_100025230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_100005F70(0, 0, v6, &unk_1000259E0, v10);

  v11 = type metadata accessor for CameraModel();
  v12.receiver = v8;
  v12.super_class = v11;
  [(CameraModel *)&v12 dealloc];
}

- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_10000B464(v9, a5);
}

- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_10000B730(a5);
}

- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = a6;
  sub_10000B9E0(v13, a6);

  (*(v10 + 8))(v13, v9);
}

- (void)orientationChangedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000BB78();
}

- (void)sessionWasInterruptedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000BE6C(v4, "Session was interrupted: %@");
}

- (void)sessionInterruptionEndedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000BE6C(v4, "Session ended interruption: %@");
}

- (_TtC13ClarityCamera11CameraModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end