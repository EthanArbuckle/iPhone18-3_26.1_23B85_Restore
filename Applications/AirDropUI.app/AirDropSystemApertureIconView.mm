@interface AirDropSystemApertureIconView
- (CGSize)intrinsicContentSize;
- (_TtC9AirDropUI29AirDropSystemApertureIconView)init;
- (_TtC9AirDropUI29AirDropSystemApertureIconView)initWithCoder:(id)coder;
@end

@implementation AirDropSystemApertureIconView

- (CGSize)intrinsicContentSize
{
  v2 = (self + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_overrideIntrinsicContentSize);
  if (self->progress[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_overrideIntrinsicContentSize])
  {
    v5.receiver = self;
    v5.super_class = type metadata accessor for AirDropSystemApertureIconView();
    [(AirDropSystemApertureIconView *)&v5 intrinsicContentSize];
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

- (_TtC9AirDropUI29AirDropSystemApertureIconView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_progress) = 0;
  v4 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_transferState;
  v5 = enum case for SFAirDropReceive.Transfer.State.created(_:);
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_thumbnailImage) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9AirDropUI29AirDropSystemApertureIconView)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end