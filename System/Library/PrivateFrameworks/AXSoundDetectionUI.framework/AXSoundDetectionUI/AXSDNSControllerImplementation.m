@interface AXSDNSControllerImplementation
- (AXSDDetectorManager)detectorManager;
- (BOOL)isListening;
- (NSSet)currentDetectionTypes;
- (id)pipeInFilePath:(id)a3 error:(id *)a4;
- (id)pipeInFileURL:(id)a3 error:(id *)a4;
- (void)addWithListenType:(id)a3;
- (void)assetsReadyAndDetectorsAdded;
- (void)listenEngineDidStartWithInputFormat:(id)a3;
- (void)listenEngineFinishedAudioFile:(id)a3;
- (void)listenEngineReceivedAudioFile:(id)a3;
- (void)receivedBuffer:(id)a3 atTime:(id)a4;
- (void)receivedBuffer:(id)a3 atTime:(id)a4 isFile:(BOOL)a5;
- (void)receivedCompletion:(id)a3;
- (void)receivedError:(id)a3 fromDetector:(id)a4;
- (void)receivedObservation:(id)a3 forDetector:(id)a4;
- (void)removeAllListenTypes;
- (void)removeWithListenType:(id)a3;
- (void)setDetectorManager:(id)a3;
- (void)stopListening;
@end

@implementation AXSDNSControllerImplementation

- (void)assetsReadyAndDetectorsAdded
{
  v1 = a1;
  _s18AXSoundDetectionUI30AXSDNSControllerImplementationC28assetsReadyAndDetectorsAddedyyF_0();
}

- (AXSDDetectorManager)detectorManager
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDetectorManager:(id)a3
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (NSSet)currentDetectionTypes
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  v5 = self;
  v6 = [v4 currentDetectors];
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
  v5 = self;
  if ([v4 containsListenDelegate_])
  {
    v6 = *(&self->super.super.isa + v3);
    v7 = [v6 isListening];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addWithListenType:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D67B264(v4);
}

- (void)removeWithListenType:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D67B2E0(v4);
}

- (void)removeAllListenTypes
{
  v2 = self;
  sub_23D67B568();
}

- (void)stopListening
{
  v2 = self;
  sub_23D67BCC4();
}

- (id)pipeInFileURL:(id)a3 error:(id *)a4
{
  v5 = sub_23D6856A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D685680();
  v10 = self;
  AXSDNSControllerImplementation.pipe(inFileURL:)(v9);
  (*(v6 + 8))(v9, v5);

  type metadata accessor for AXSDSoundDetectionType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0978, &qword_23D689A70);
  sub_23D67FFF0(&qword_27E2E04E0, type metadata accessor for AXSDSoundDetectionType);
  v11 = sub_23D6858B0();

  return v11;
}

- (id)pipeInFilePath:(id)a3 error:(id *)a4
{
  v5 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v7 = v6;
  v8 = self;
  AXSDNSControllerImplementation.pipe(inFilePath:)(v5, v7);

  type metadata accessor for AXSDSoundDetectionType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0978, &qword_23D689A70);
  sub_23D67FFF0(&qword_27E2E04E0, type metadata accessor for AXSDSoundDetectionType);
  v9 = sub_23D6858B0();

  return v9;
}

- (void)receivedBuffer:(id)a3 atTime:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for AXSDNSControllerImplementation();
  v6 = a3;
  v7 = a4;
  v8 = v9.receiver;
  [(AXSDNSBaseControllerImplementation *)&v9 receivedBuffer:v6 atTime:v7];
  [v8 receivedBuffer:v6 atTime:v7 isFile:{0, v9.receiver, v9.super_class}];
}

- (void)receivedBuffer:(id)a3 atTime:(id)a4 isFile:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  _s18AXSoundDetectionUI30AXSDNSControllerImplementationC14receivedBuffer_2at6isFileySo16AVAudioPCMBufferC_So0K4TimeCSbtF_0(v7, v8);
}

- (void)listenEngineDidStartWithInputFormat:(id)a3
{
  v5 = a3;
  v6 = self;
  AXSDNSControllerImplementation.listenEngineDidStart(withInputFormat:)(a3);
}

- (void)listenEngineReceivedAudioFile:(id)a3
{
  v4 = a3;
  v5._impl = self;
  impl = v5._impl;
  v5.super.isa = v4;
  AXSDNSControllerImplementation.listenEngineReceivedAudioFile(_:)(v5);
}

- (void)listenEngineFinishedAudioFile:(id)a3
{
  v4 = a3;
  v5._impl = self;
  impl = v5._impl;
  v5.super.isa = v4;
  AXSDNSControllerImplementation.listenEngineFinishedAudioFile(_:)(v5);
}

- (void)receivedObservation:(id)a3 forDetector:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AXSDNSControllerImplementation.receivedObservation(_:forDetector:)(v6, v7);
}

- (void)receivedCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  _s18AXSoundDetectionUI30AXSDNSControllerImplementationC18receivedCompletionyySo20SNDetectSoundRequestCF_0(v4);
}

- (void)receivedError:(id)a3 fromDetector:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  _s18AXSoundDetectionUI30AXSDNSControllerImplementationC13receivedError_12fromDetectorys0G0_p_So20SNDetectSoundRequestCtF_0(v8, v6);
}

@end