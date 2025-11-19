@interface RCSpatialRecorder
- (BOOL)handleWillTerminate:(id *)a3;
- (BOOL)sampleRecordingTime:(double *)a3;
- (BOOL)startAndReturnError:(id *)a3;
- (NSDictionary)outputFileSettings;
- (NSURL)outputFileURL;
- (VMRecordingController)controller;
- (_TtC10VoiceMemos17RCSpatialRecorder)init;
- (_TtC10VoiceMemos17RCSpatialRecorder)initWithOutputFileURL:(id)a3 outputFileSettings:(id)a4;
- (void)captureSessionRecorder:(id)a3 didFailWithError:(id)a4;
- (void)captureSessionRecorderDidCaptureSampleBuffer:(id)a3 buffer:(id)a4 mediaTime:(double)a5;
- (void)captureSessionRecorderDidFinish:(id)a3 fileOutputURL:(id)a4 error:(id)a5;
- (void)captureSessionRecorderIsRunningDidChange:(id)a3 isRunning:(BOOL)a4;
- (void)setController:(id)a3;
- (void)setGroup:(id)a3;
- (void)setOutputFileSettings:(id)a3;
- (void)stopRecordingAtTime:(double)a3 completion:(id)a4;
@end

@implementation RCSpatialRecorder

- (void)setGroup:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_group);
  *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_group) = a3;
  v3 = a3;
}

- (VMRecordingController)controller
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setController:(id)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_controller) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (NSURL)outputFileURL
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_captureSessionRecorder) + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutputURL, v3, v6);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v4 + 8))(v8, v3);

  return v11;
}

- (NSDictionary)outputFileSettings
{

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setOutputFileSettings:(id)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_outputFileSettings) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)stopRecordingAtTime:(double)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = self;
  sub_10015CD64(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (BOOL)sampleRecordingTime:(double *)a3
{
  v3 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_firstSampleMediaTime + 8);
  if ((v3 & 1) == 0)
  {
    v6 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_firstSampleMediaTime);
    v7 = objc_opt_self();
    v8 = self;
    [v7 secondsForHostTime:mach_absolute_time()];
    *a3 = v9 - v6 + *(v8 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_punchInTime);
  }

  return v3 ^ 1;
}

- (BOOL)startAndReturnError:(id *)a3
{
  v3 = self;
  sub_10018611C();
  sub_100186A38();

  return 1;
}

- (BOOL)handleWillTerminate:(id *)a3
{
  v3 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_captureSessionRecorder);
  v4 = *(v3 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutput);
  v5 = self;
  [v4 stopRecording];
  [*(v3 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_captureSession) stopRunning];

  return 1;
}

- (_TtC10VoiceMemos17RCSpatialRecorder)initWithOutputFileURL:(id)a3 outputFileSettings:(id)a4
{
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10015C5F0(v7, v8);
}

- (_TtC10VoiceMemos17RCSpatialRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureSessionRecorderIsRunningDidChange:(id)a3 isRunning:(BOOL)a4
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_controller);
  if (v4)
  {
    [v4 setIoStarted:a4];
  }
}

- (void)captureSessionRecorder:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10015CE60(v8);
}

- (void)captureSessionRecorderDidFinish:(id)a3 fileOutputURL:(id)a4 error:(id)a5
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = (self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_stopRecordingCompletion);
  v12 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_stopRecordingCompletion);
  v13 = self;
  if (v12)
  {
    v14 = sub_1000D0DAC(v12);
    v12(v14);
    sub_1000338B4(v12);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *v11;
  *v11 = 0;
  v11[1] = 0;
  sub_1000338B4(v15);
}

- (void)captureSessionRecorderDidCaptureSampleBuffer:(id)a3 buffer:(id)a4 mediaTime:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_10015D21C(v9, a5);
}

@end