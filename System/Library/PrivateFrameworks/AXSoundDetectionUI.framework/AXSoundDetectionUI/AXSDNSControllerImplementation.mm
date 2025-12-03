@interface AXSDNSControllerImplementation
- (AXSDDetectorManager)detectorManager;
- (BOOL)isListening;
- (NSSet)currentDetectionTypes;
- (id)pipeInFilePath:(id)path error:(id *)error;
- (id)pipeInFileURL:(id)l error:(id *)error;
- (void)addWithListenType:(id)type;
- (void)assetsReadyAndDetectorsAdded;
- (void)listenEngineDidStartWithInputFormat:(id)format;
- (void)listenEngineFinishedAudioFile:(id)file;
- (void)listenEngineReceivedAudioFile:(id)file;
- (void)receivedBuffer:(id)buffer atTime:(id)time;
- (void)receivedBuffer:(id)buffer atTime:(id)time isFile:(BOOL)file;
- (void)receivedCompletion:(id)completion;
- (void)receivedError:(id)error fromDetector:(id)detector;
- (void)receivedObservation:(id)observation forDetector:(id)detector;
- (void)removeAllListenTypes;
- (void)removeWithListenType:(id)type;
- (void)setDetectorManager:(id)manager;
- (void)stopListening;
@end

@implementation AXSDNSControllerImplementation

- (void)assetsReadyAndDetectorsAdded
{
  selfCopy = self;
  _s18AXSoundDetectionUI30AXSDNSControllerImplementationC28assetsReadyAndDetectorsAddedyyF_0();
}

- (AXSDDetectorManager)detectorManager
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDetectorManager:(id)manager
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = manager;
  managerCopy = manager;
}

- (NSSet)currentDetectionTypes
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  selfCopy = self;
  currentDetectors = [v4 currentDetectors];
  type metadata accessor for AXSDSoundDetectionType();
  v7 = sub_23D685980();

  sub_23D6549C0(v7);

  sub_23D67FFF0(&qword_27E2E04E0, type metadata accessor for AXSDSoundDetectionType);
  v8 = sub_23D685A10();

  return v8;
}

- (BOOL)isListening
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  selfCopy = self;
  if ([v4 containsListenDelegate_])
  {
    v6 = *(&self->super.super.isa + v3);
    isListening = [v6 isListening];
  }

  else
  {
    isListening = 0;
  }

  return isListening;
}

- (void)addWithListenType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_23D67B264(typeCopy);
}

- (void)removeWithListenType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_23D67B2E0(typeCopy);
}

- (void)removeAllListenTypes
{
  selfCopy = self;
  sub_23D67B568();
}

- (void)stopListening
{
  selfCopy = self;
  sub_23D67BCC4();
}

- (id)pipeInFileURL:(id)l error:(id *)error
{
  v5 = sub_23D6856A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D685680();
  selfCopy = self;
  AXSDNSControllerImplementation.pipe(inFileURL:)(v9);
  (*(v6 + 8))(v9, v5);

  type metadata accessor for AXSDSoundDetectionType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0978, &qword_23D689A70);
  sub_23D67FFF0(&qword_27E2E04E0, type metadata accessor for AXSDSoundDetectionType);
  v11 = sub_23D6858B0();

  return v11;
}

- (id)pipeInFilePath:(id)path error:(id *)error
{
  v5 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v7 = v6;
  selfCopy = self;
  AXSDNSControllerImplementation.pipe(inFilePath:)(v5, v7);

  type metadata accessor for AXSDSoundDetectionType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0978, &qword_23D689A70);
  sub_23D67FFF0(&qword_27E2E04E0, type metadata accessor for AXSDSoundDetectionType);
  v9 = sub_23D6858B0();

  return v9;
}

- (void)receivedBuffer:(id)buffer atTime:(id)time
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for AXSDNSControllerImplementation();
  bufferCopy = buffer;
  timeCopy = time;
  v8 = v9.receiver;
  [(AXSDNSBaseControllerImplementation *)&v9 receivedBuffer:bufferCopy atTime:timeCopy];
  [v8 receivedBuffer:bufferCopy atTime:timeCopy isFile:{0, v9.receiver, v9.super_class}];
}

- (void)receivedBuffer:(id)buffer atTime:(id)time isFile:(BOOL)file
{
  bufferCopy = buffer;
  timeCopy = time;
  selfCopy = self;
  _s18AXSoundDetectionUI30AXSDNSControllerImplementationC14receivedBuffer_2at6isFileySo16AVAudioPCMBufferC_So0K4TimeCSbtF_0(bufferCopy, timeCopy);
}

- (void)listenEngineDidStartWithInputFormat:(id)format
{
  formatCopy = format;
  selfCopy = self;
  AXSDNSControllerImplementation.listenEngineDidStart(withInputFormat:)(format);
}

- (void)listenEngineReceivedAudioFile:(id)file
{
  fileCopy = file;
  v5._impl = self;
  impl = v5._impl;
  v5.super.isa = fileCopy;
  AXSDNSControllerImplementation.listenEngineReceivedAudioFile(_:)(v5);
}

- (void)listenEngineFinishedAudioFile:(id)file
{
  fileCopy = file;
  v5._impl = self;
  impl = v5._impl;
  v5.super.isa = fileCopy;
  AXSDNSControllerImplementation.listenEngineFinishedAudioFile(_:)(v5);
}

- (void)receivedObservation:(id)observation forDetector:(id)detector
{
  observationCopy = observation;
  detectorCopy = detector;
  selfCopy = self;
  AXSDNSControllerImplementation.receivedObservation(_:forDetector:)(observationCopy, detectorCopy);
}

- (void)receivedCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  _s18AXSoundDetectionUI30AXSDNSControllerImplementationC18receivedCompletionyySo20SNDetectSoundRequestCF_0(completionCopy);
}

- (void)receivedError:(id)error fromDetector:(id)detector
{
  errorCopy = error;
  detectorCopy = detector;
  selfCopy = self;
  _s18AXSoundDetectionUI30AXSDNSControllerImplementationC13receivedError_12fromDetectorys0G0_p_So20SNDetectSoundRequestCtF_0(errorCopy, detectorCopy);
}

@end