@interface AXSDNSBaseControllerImplementation
- (BOOL)isListening;
- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption;
- (void)listenEngineDidStartWithInputFormat:(id)a3;
- (void)listenEngineFailedToStartWithError:(id)a3;
- (void)startListening;
- (void)stopListening;
@end

@implementation AXSDNSBaseControllerImplementation

- (BOOL)isListening
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
  swift_beginAccess();
  return [*(&self->super.isa + v3) isListening];
}

- (void)startListening
{
  v2 = self;
  sub_23D656168();
}

- (void)stopListening
{
  v2 = self;
  sub_23D6563BC();
}

- (void)listenEngineDidStartWithInputFormat:(id)a3
{
  v5 = a3;
  v6 = self;
  AXSDNSBaseControllerImplementation.listenEngineDidStart(withInputFormat:)(a3);
}

- (void)listenEngineFailedToStartWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  AXSDNSBaseControllerImplementation.listenEngineFailedToStartWithError(_:)(a3);
}

- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xA0);
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

@end