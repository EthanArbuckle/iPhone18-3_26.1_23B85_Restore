@interface AXSASecureControllerImplementation
- (_TtP18AXSoundDetectionUI34AXSDSoundActionsControllerDelegate_)delegate;
- (void)setDelegate:(id)delegate;
- (void)startListening;
- (void)startListeningOnQueue:(id)queue;
- (void)stopListening;
@end

@implementation AXSASecureControllerImplementation

- (_TtP18AXSoundDetectionUI34AXSDSoundActionsControllerDelegate_)delegate
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)startListening
{
  selfCopy = self;
  sub_23D6675F8();
}

- (void)startListeningOnQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  sub_23D6675F8();
}

- (void)stopListening
{
  selfCopy = self;
  sub_23D664FBC();
}

@end