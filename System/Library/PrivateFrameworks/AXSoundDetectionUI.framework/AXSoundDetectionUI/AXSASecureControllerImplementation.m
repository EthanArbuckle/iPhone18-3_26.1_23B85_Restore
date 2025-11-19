@interface AXSASecureControllerImplementation
- (_TtP18AXSoundDetectionUI34AXSDSoundActionsControllerDelegate_)delegate;
- (void)setDelegate:(id)a3;
- (void)startListening;
- (void)startListeningOnQueue:(id)a3;
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

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)startListening
{
  v2 = self;
  sub_23D6675F8();
}

- (void)startListeningOnQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6675F8();
}

- (void)stopListening
{
  v2 = self;
  sub_23D664FBC();
}

@end