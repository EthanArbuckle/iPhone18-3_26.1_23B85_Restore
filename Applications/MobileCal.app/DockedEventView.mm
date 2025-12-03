@interface DockedEventView
- (_TtC9MobileCal15DockedEventView)initWithCoder:(id)coder;
- (_TtC9MobileCal15DockedEventView)initWithFrame:(CGRect)frame;
- (void)actionButtonTapped;
@end

@implementation DockedEventView

- (_TtC9MobileCal15DockedEventView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MobileCal15DockedEventView_event) = 0;
  *&self->event[OBJC_IVAR____TtC9MobileCal15DockedEventView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)actionButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_fullViewController) actionButtonTapped];

    swift_unknownObjectRelease();
  }
}

- (_TtC9MobileCal15DockedEventView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end