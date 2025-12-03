@interface AirDropSystemApertureProgressView
- (CGSize)intrinsicContentSize;
- (_TtC9AirDropUI33AirDropSystemApertureProgressView)init;
- (_TtC9AirDropUI33AirDropSystemApertureProgressView)initWithCoder:(id)coder;
- (void)touchedDownCancelButton;
- (void)touchedUpCancelButton;
@end

@implementation AirDropSystemApertureProgressView

- (CGSize)intrinsicContentSize
{
  v2 = (self + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_overrideIntrinsicContentSize);
  if (self->progress[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_overrideIntrinsicContentSize])
  {
    v5.receiver = self;
    v5.super_class = type metadata accessor for AirDropSystemApertureProgressView();
    [(AirDropSystemApertureProgressView *)&v5 intrinsicContentSize];
  }

  else
  {
    v3 = *v2;
    v4 = v2[1];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC9AirDropUI33AirDropSystemApertureProgressView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress;
  *(&self->super.super.super.super.isa + v4) = [objc_opt_self() progressWithTotalUnitCount:1000];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_isTouchingDownButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_didPostAccessibilityLayoutChangeNotification) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)touchedDownCancelButton
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_isTouchingDownButton) = 1;
  selfCopy = self;
  sub_100109800();
}

- (void)touchedUpCancelButton
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_isTouchingDownButton) = 0;
  selfCopy = self;
  sub_100109800();
}

- (_TtC9AirDropUI33AirDropSystemApertureProgressView)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end