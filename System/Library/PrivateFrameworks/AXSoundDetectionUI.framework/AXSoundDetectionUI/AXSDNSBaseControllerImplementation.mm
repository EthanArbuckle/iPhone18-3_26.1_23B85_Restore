@interface AXSDNSBaseControllerImplementation
- (BOOL)isListening;
- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption;
- (void)listenEngineDidStartWithInputFormat:(id)format;
- (void)listenEngineFailedToStartWithError:(id)error;
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
  selfCopy = self;
  sub_23D656168();
}

- (void)stopListening
{
  selfCopy = self;
  sub_23D6563BC();
}

- (void)listenEngineDidStartWithInputFormat:(id)format
{
  formatCopy = format;
  selfCopy = self;
  AXSDNSBaseControllerImplementation.listenEngineDidStart(withInputFormat:)(format);
}

- (void)listenEngineFailedToStartWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  AXSDNSBaseControllerImplementation.listenEngineFailedToStartWithError(_:)(error);
}

- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xA0);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

@end