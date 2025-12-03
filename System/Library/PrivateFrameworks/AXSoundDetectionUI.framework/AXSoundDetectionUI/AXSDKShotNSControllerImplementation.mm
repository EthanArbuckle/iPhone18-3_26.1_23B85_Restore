@interface AXSDKShotNSControllerImplementation
- (BOOL)isListening;
- (NSSet)currentDetectionTypes;
- (void)dealloc;
- (void)listenEngineDidStartWithInputFormat:(id)format;
- (void)listenEngineFailedToStartWithError:(id)error;
- (void)receivedCompletion:(id)completion;
- (void)receivedError:(id)error fromDetector:(id)detector;
- (void)receivedObservation:(id)observation forDetector:(id)detector;
- (void)removeAllListenTypes;
- (void)startListening;
- (void)stopListening;
@end

@implementation AXSDKShotNSControllerImplementation

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

- (NSSet)currentDetectionTypes
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC18AXSoundDetectionUI35AXSDKShotNSControllerImplementation_modelManager);
  selfCopy = self;
  currentDetectors = [v2 currentDetectors];
  v5 = sub_23D685980();

  sub_23D65425C(v5);

  v6 = sub_23D685A10();

  return v6;
}

- (void)dealloc
{
  type metadata accessor for AXSDKShotMonitor();
  swift_initStaticObject();
  selfCopy = self;
  sub_23D66B610();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AXSDKShotNSControllerImplementation();
  [(AXSDKShotNSControllerImplementation *)&v4 dealloc];
}

- (void)startListening
{
  selfCopy = self;
  sub_23D650180();
}

- (void)stopListening
{
  selfCopy = self;
  sub_23D650524();
}

- (void)removeAllListenTypes
{
  selfCopy = self;
  sub_23D650BEC();
}

- (void)listenEngineDidStartWithInputFormat:(id)format
{
  formatCopy = format;
  selfCopy = self;
  AXSDKShotNSControllerImplementation.listenEngineDidStart(withInputFormat:)(format);
}

- (void)listenEngineFailedToStartWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  AXSDKShotNSControllerImplementation.listenEngineFailedToStartWithError(_:)(error);
}

- (void)receivedObservation:(id)observation forDetector:(id)detector
{
  observationCopy = observation;
  detectorCopy = detector;
  selfCopy = self;
  AXSDKShotNSControllerImplementation.receivedObservation(_:forDetector:)(observationCopy, detectorCopy);
}

- (void)receivedCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  AXSDKShotNSControllerImplementation.receivedCompletion(_:)(completionCopy);
}

- (void)receivedError:(id)error fromDetector:(id)detector
{
  errorCopy = error;
  detectorCopy = detector;
  selfCopy = self;
  AXSDKShotNSControllerImplementation.receivedError(_:fromDetector:)(errorCopy, detectorCopy);
}

@end