@interface AXSDKShotNSRecordingControllerImplementation
- (AXSDDetectorManager)detectorManager;
- (BOOL)kickoffMLTrainingOfDetector:(id)a3 error:(id *)a4;
- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption;
- (BOOL)retrainModelWithIdentifier:(id)a3;
- (NSSet)currentDetectionTypes;
- (void)addWithListenType:(id)a3;
- (void)assetsReadyAndDetectorsAdded;
- (void)deregisterWithListener:(id)a3;
- (void)hearingMLHelperService:(id)a3 eventOccurred:(int64_t)a4;
- (void)listenEngineDidStartWithInputFormat:(id)a3;
- (void)listenEngineFailedToStartWithError:(id)a3;
- (void)receivedBuffer:(id)a3 atTime:(id)a4;
- (void)receivedCompletion:(id)a3;
- (void)receivedError:(id)a3 fromDetector:(id)a4;
- (void)receivedObservation:(id)a3 forDetector:(id)a4;
- (void)registerWithListener:(id)a3 forRecordingUpdates:(id)a4;
- (void)removeAllListenTypes;
- (void)removeWithListenType:(id)a3;
- (void)savedTrainingRecordingForDetector:(id)a3;
- (void)setDetectorManager:(id)a3;
- (void)startListening;
- (void)startListeningToTrainDetector:(id)a3;
- (void)stopListening;
@end

@implementation AXSDKShotNSRecordingControllerImplementation

- (AXSDDetectorManager)detectorManager
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI44AXSDKShotNSRecordingControllerImplementation_detectorManager;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDetectorManager:(id)a3
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI44AXSDKShotNSRecordingControllerImplementation_detectorManager;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NSSet)currentDetectionTypes
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI44AXSDKShotNSRecordingControllerImplementation_detectorManager;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = self;
  v6 = [v4 currentDetectors];
  type metadata accessor for AXSDSoundDetectionType();
  v7 = sub_23D685980();

  sub_23D6549C0(v7);

  sub_23D662DF0(&qword_27E2E04E0, type metadata accessor for AXSDSoundDetectionType);
  v8 = sub_23D685A10();

  return v8;
}

- (void)startListening
{
  v2 = self;
  sub_23D65AACC();
}

- (void)startListeningToTrainDetector:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D65AB44(v4);
}

- (void)stopListening
{
  v2 = self;
  sub_23D65AF18();
}

- (void)registerWithListener:(id)a3 forRecordingUpdates:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_23D65B460(v8, sub_23D662DDC, v7);
}

- (void)deregisterWithListener:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D65BA90(v4);
}

- (BOOL)retrainModelWithIdentifier:(id)a3
{
  v4 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_23D65C048(v4, v6);

  return v4 & 1;
}

- (void)addWithListenType:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D65C504(v4);
}

- (void)removeWithListenType:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D65C580(v4);
}

- (void)removeAllListenTypes
{
  v2 = self;
  sub_23D65C808();
}

- (BOOL)kickoffMLTrainingOfDetector:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_23D65E7FC(v5);

  return 1;
}

- (void)listenEngineFailedToStartWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  AXSDKShotNSRecordingControllerImplementation.listenEngineFailedToStartWithError(_:)(a3);
}

- (void)listenEngineDidStartWithInputFormat:(id)a3
{
  v5 = a3;
  v6 = self;
  AXSDKShotNSRecordingControllerImplementation.listenEngineDidStart(withInputFormat:)(a3);
}

- (void)receivedBuffer:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  v8.super.super.isa = v6;
  v8.super._impl = v7;
  AXSDKShotNSRecordingControllerImplementation.receivedBuffer(_:at:)(v8, v9);
}

- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 shouldBeListeningForSoundRecognitionCustomSounds];

  return v3;
}

- (void)receivedObservation:(id)a3 forDetector:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AXSDKShotNSRecordingControllerImplementation.receivedObservation(_:forDetector:)(v6, v7);
}

- (void)receivedCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  AXSDKShotNSRecordingControllerImplementation.receivedCompletion(_:)(v4);
}

- (void)receivedError:(id)a3 fromDetector:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  AXSDKShotNSRecordingControllerImplementation.receivedError(_:fromDetector:)(v8, v6);
}

- (void)assetsReadyAndDetectorsAdded
{
  v2 = self;
  AXSDKShotNSRecordingControllerImplementation.assetsReadyAndDetectorsAdded()();
}

- (void)savedTrainingRecordingForDetector:(id)a3
{
  v5 = a3;
  v6 = self;
  AXSDKShotNSRecordingControllerImplementation.savedTrainingRecording(for:)(a3);
}

- (void)hearingMLHelperService:(id)a3 eventOccurred:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_23D6623C8(a4);
}

@end