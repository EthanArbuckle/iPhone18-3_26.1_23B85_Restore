@interface CaptureSessionRecorder
- (_TtC10VoiceMemos22CaptureSessionRecorder)init;
- (void)captureOutput:(id)output didFinishRecordingToOutputFileAtURL:(id)l fromConnections:(id)connections error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)handleRuntimeErrorWithNotification:(id)notification;
@end

@implementation CaptureSessionRecorder

- (void)handleRuntimeErrorWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001865CC();

  (*(v5 + 8))(v8, v4);
}

- (_TtC10VoiceMemos22CaptureSessionRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureOutput:(id)output didFinishRecordingToOutputFileAtURL:(id)l fromConnections:(id)connections error:(id)error
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  outputCopy = output;
  selfCopy = self;
  errorCopy = error;
  sub_1001878A0(v13, error);

  (*(v10 + 8))(v13, v9);
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  bufferCopy = buffer;
  connectionCopy = connection;
  selfCopy = self;
  sub_100187980(bufferCopy);
}

@end