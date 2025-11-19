@interface AXSANSControllerImplementation
- (BOOL)isListening;
- (_TtP18AXSoundDetectionUI34AXSDSoundActionsControllerDelegate_)delegate;
- (void)listenEngineDidStartWithInputFormat:(id)a3;
- (void)listenEngineFailedToStartWithError:(id)a3;
- (void)listeningStoppedWithError:(id)a3;
- (void)receivedBuffer:(id)a3 atTime:(id)a4;
- (void)receivedError:(id)a3 fromDetector:(id)a4;
- (void)receivedObservation:(id)a3 forDetector:(id)a4;
- (void)setDelegate:(id)a3;
- (void)startListening;
- (void)startListeningOnQueue:(id)a3;
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

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
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

- (void)startListening
{
  v2 = self;
  sub_23D668610(0);
}

- (void)startListeningOnQueue:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_23D668610(a3);
}

- (void)stopListening
{
  v2 = self;
  sub_23D668D70();
}

- (void)receivedBuffer:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  v8.super.super.isa = v6;
  v8.super._impl = v7;
  AXSANSControllerImplementation.receivedBuffer(_:at:)(v8, v9);
}

- (void)listenEngineDidStartWithInputFormat:(id)a3
{
  v5 = a3;
  v6 = self;
  AXSANSControllerImplementation.listenEngineDidStart(withInputFormat:)(a3);
}

- (void)listenEngineFailedToStartWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  AXSANSControllerImplementation.listenEngineFailedToStartWithError(_:)(a3);
}

- (void)receivedObservation:(id)a3 forDetector:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s18AXSoundDetectionUI30AXSANSControllerImplementationC19receivedObservation_11forDetectorySo20SNSoundActionsResultC_So20SNDetectSoundRequestCtF_0(v6);
}

- (void)receivedError:(id)a3 fromDetector:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  AXSANSControllerImplementation.receivedError(_:fromDetector:)(v8, v6);
}

- (void)listeningStoppedWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  AXSANSControllerImplementation.listeningStoppedWithError(_:)(a3);
}

@end