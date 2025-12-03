@interface AXSANSControllerImplementation
- (BOOL)isListening;
- (_TtP18AXSoundDetectionUI34AXSDSoundActionsControllerDelegate_)delegate;
- (void)listenEngineDidStartWithInputFormat:(id)format;
- (void)listenEngineFailedToStartWithError:(id)error;
- (void)listeningStoppedWithError:(id)error;
- (void)receivedBuffer:(id)buffer atTime:(id)time;
- (void)receivedError:(id)error fromDetector:(id)detector;
- (void)receivedObservation:(id)observation forDetector:(id)detector;
- (void)setDelegate:(id)delegate;
- (void)startListening;
- (void)startListeningOnQueue:(id)queue;
- (void)stopListening;
@end

@implementation AXSANSControllerImplementation

- (_TtP18AXSoundDetectionUI34AXSDSoundActionsControllerDelegate_)delegate
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
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

- (void)startListening
{
  selfCopy = self;
  sub_23D668610(0);
}

- (void)startListeningOnQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  sub_23D668610(queue);
}

- (void)stopListening
{
  selfCopy = self;
  sub_23D668D70();
}

- (void)receivedBuffer:(id)buffer atTime:(id)time
{
  bufferCopy = buffer;
  timeCopy = time;
  selfCopy = self;
  v8.super.super.isa = bufferCopy;
  v8.super._impl = timeCopy;
  AXSANSControllerImplementation.receivedBuffer(_:at:)(v8, selfCopy);
}

- (void)listenEngineDidStartWithInputFormat:(id)format
{
  formatCopy = format;
  selfCopy = self;
  AXSANSControllerImplementation.listenEngineDidStart(withInputFormat:)(format);
}

- (void)listenEngineFailedToStartWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  AXSANSControllerImplementation.listenEngineFailedToStartWithError(_:)(error);
}

- (void)receivedObservation:(id)observation forDetector:(id)detector
{
  observationCopy = observation;
  detectorCopy = detector;
  selfCopy = self;
  _s18AXSoundDetectionUI30AXSANSControllerImplementationC19receivedObservation_11forDetectorySo20SNSoundActionsResultC_So20SNDetectSoundRequestCtF_0(observationCopy);
}

- (void)receivedError:(id)error fromDetector:(id)detector
{
  errorCopy = error;
  detectorCopy = detector;
  selfCopy = self;
  AXSANSControllerImplementation.receivedError(_:fromDetector:)(errorCopy, detectorCopy);
}

- (void)listeningStoppedWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  AXSANSControllerImplementation.listeningStoppedWithError(_:)(error);
}

@end