@interface CaptureSessionRecorder
- (_TtC10VoiceMemos22CaptureSessionRecorder)init;
- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)handleRuntimeErrorWithNotification:(id)a3;
@end

@implementation CaptureSessionRecorder

- (void)handleRuntimeErrorWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1001865CC();

  (*(v5 + 8))(v8, v4);
}

- (_TtC10VoiceMemos22CaptureSessionRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = a6;
  sub_1001878A0(v13, a6);

  (*(v10 + 8))(v13, v9);
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100187980(v9);
}

@end