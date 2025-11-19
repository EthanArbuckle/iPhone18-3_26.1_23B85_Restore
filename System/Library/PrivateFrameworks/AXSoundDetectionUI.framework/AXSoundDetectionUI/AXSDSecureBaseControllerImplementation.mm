@interface AXSDSecureBaseControllerImplementation
- (BOOL)isListening;
- (void)startListening;
- (void)stopListening;
@end

@implementation AXSDSecureBaseControllerImplementation

- (BOOL)isListening
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2] != 0;
}

- (void)startListening
{
  v2 = self;
  sub_23D66E7C8();
}

- (void)stopListening
{
  v2 = self;
  sub_23D66E9C4();
}

@end