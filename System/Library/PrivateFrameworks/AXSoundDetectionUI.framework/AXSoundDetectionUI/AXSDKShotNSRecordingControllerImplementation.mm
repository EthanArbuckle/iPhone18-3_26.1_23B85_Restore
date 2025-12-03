@interface AXSDKShotNSRecordingControllerImplementation
- (AXSDDetectorManager)detectorManager;
- (BOOL)kickoffMLTrainingOfDetector:(id)detector error:(id *)error;
- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption;
- (BOOL)retrainModelWithIdentifier:(id)identifier;
- (NSSet)currentDetectionTypes;
- (void)addWithListenType:(id)type;
- (void)assetsReadyAndDetectorsAdded;
- (void)deregisterWithListener:(id)listener;
- (void)hearingMLHelperService:(id)service eventOccurred:(int64_t)occurred;
- (void)listenEngineDidStartWithInputFormat:(id)format;
- (void)listenEngineFailedToStartWithError:(id)error;
- (void)receivedBuffer:(id)buffer atTime:(id)time;
- (void)receivedCompletion:(id)completion;
- (void)receivedError:(id)error fromDetector:(id)detector;
- (void)receivedObservation:(id)observation forDetector:(id)detector;
- (void)registerWithListener:(id)listener forRecordingUpdates:(id)updates;
- (void)removeAllListenTypes;
- (void)removeWithListenType:(id)type;
- (void)savedTrainingRecordingForDetector:(id)detector;
- (void)setDetectorManager:(id)manager;
- (void)startListening;
- (void)startListeningToTrainDetector:(id)detector;
- (void)stopListening;
@end

@implementation AXSDKShotNSRecordingControllerImplementation

- (AXSDDetectorManager)detectorManager
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI44AXSDKShotNSRecordingControllerImplementation_detectorManager;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDetectorManager:(id)manager
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI44AXSDKShotNSRecordingControllerImplementation_detectorManager;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = manager;
  managerCopy = manager;
}

- (NSSet)currentDetectionTypes
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI44AXSDKShotNSRecordingControllerImplementation_detectorManager;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;
  currentDetectors = [v4 currentDetectors];
  type metadata accessor for AXSDSoundDetectionType();
  v7 = sub_23D685980();

  sub_23D6549C0(v7);

  sub_23D662DF0(&qword_27E2E04E0, type metadata accessor for AXSDSoundDetectionType);
  v8 = sub_23D685A10();

  return v8;
}

- (void)startListening
{
  selfCopy = self;
  sub_23D65AACC();
}

- (void)startListeningToTrainDetector:(id)detector
{
  detectorCopy = detector;
  selfCopy = self;
  sub_23D65AB44(detectorCopy);
}

- (void)stopListening
{
  selfCopy = self;
  sub_23D65AF18();
}

- (void)registerWithListener:(id)listener forRecordingUpdates:(id)updates
{
  v6 = _Block_copy(updates);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  listenerCopy = listener;
  selfCopy = self;
  sub_23D65B460(listenerCopy, sub_23D662DDC, v7);
}

- (void)deregisterWithListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  sub_23D65BA90(listenerCopy);
}

- (BOOL)retrainModelWithIdentifier:(id)identifier
{
  v4 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_23D65C048(v4, v6);

  return v4 & 1;
}

- (void)addWithListenType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_23D65C504(typeCopy);
}

- (void)removeWithListenType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_23D65C580(typeCopy);
}

- (void)removeAllListenTypes
{
  selfCopy = self;
  sub_23D65C808();
}

- (BOOL)kickoffMLTrainingOfDetector:(id)detector error:(id *)error
{
  detectorCopy = detector;
  selfCopy = self;
  sub_23D65E7FC(detectorCopy);

  return 1;
}

- (void)listenEngineFailedToStartWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  AXSDKShotNSRecordingControllerImplementation.listenEngineFailedToStartWithError(_:)(error);
}

- (void)listenEngineDidStartWithInputFormat:(id)format
{
  formatCopy = format;
  selfCopy = self;
  AXSDKShotNSRecordingControllerImplementation.listenEngineDidStart(withInputFormat:)(format);
}

- (void)receivedBuffer:(id)buffer atTime:(id)time
{
  bufferCopy = buffer;
  timeCopy = time;
  selfCopy = self;
  v8.super.super.isa = bufferCopy;
  v8.super._impl = timeCopy;
  AXSDKShotNSRecordingControllerImplementation.receivedBuffer(_:at:)(v8, selfCopy);
}

- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption
{
  sharedInstance = [objc_opt_self() sharedInstance];
  shouldBeListeningForSoundRecognitionCustomSounds = [sharedInstance shouldBeListeningForSoundRecognitionCustomSounds];

  return shouldBeListeningForSoundRecognitionCustomSounds;
}

- (void)receivedObservation:(id)observation forDetector:(id)detector
{
  observationCopy = observation;
  detectorCopy = detector;
  selfCopy = self;
  AXSDKShotNSRecordingControllerImplementation.receivedObservation(_:forDetector:)(observationCopy, detectorCopy);
}

- (void)receivedCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  AXSDKShotNSRecordingControllerImplementation.receivedCompletion(_:)(completionCopy);
}

- (void)receivedError:(id)error fromDetector:(id)detector
{
  errorCopy = error;
  detectorCopy = detector;
  selfCopy = self;
  AXSDKShotNSRecordingControllerImplementation.receivedError(_:fromDetector:)(errorCopy, detectorCopy);
}

- (void)assetsReadyAndDetectorsAdded
{
  selfCopy = self;
  AXSDKShotNSRecordingControllerImplementation.assetsReadyAndDetectorsAdded()();
}

- (void)savedTrainingRecordingForDetector:(id)detector
{
  detectorCopy = detector;
  selfCopy = self;
  AXSDKShotNSRecordingControllerImplementation.savedTrainingRecording(for:)(detector);
}

- (void)hearingMLHelperService:(id)service eventOccurred:(int64_t)occurred
{
  serviceCopy = service;
  selfCopy = self;
  sub_23D6623C8(occurred);
}

@end