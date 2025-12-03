@interface BackgroundActivityProgressMicaView
- (_TtC18ActivityProgressUI34BackgroundActivityProgressMicaView)init;
- (_TtC18ActivityProgressUI34BackgroundActivityProgressMicaView)initWithCoder:(id)coder;
- (void)touchedDownCancelButton;
- (void)touchedUpCancelButton;
@end

@implementation BackgroundActivityProgressMicaView

- (_TtC18ActivityProgressUI34BackgroundActivityProgressMicaView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress;
  *(&self->super.super.super.super.isa + v4) = [objc_opt_self() progressWithTotalUnitCount:1000];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_isTouchingDownButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_didPostAccessibilityLayoutChangeNotification) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)touchedDownCancelButton
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_isTouchingDownButton) = 1;
  selfCopy = self;
  sub_100009170();
}

- (void)touchedUpCancelButton
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_isTouchingDownButton) = 0;
  selfCopy = self;
  sub_100009170();
}

- (_TtC18ActivityProgressUI34BackgroundActivityProgressMicaView)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end