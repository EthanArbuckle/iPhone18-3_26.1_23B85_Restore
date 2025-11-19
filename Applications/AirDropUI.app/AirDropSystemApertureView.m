@interface AirDropSystemApertureView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC9AirDropUI25AirDropSystemApertureView)init;
- (_TtC9AirDropUI25AirDropSystemApertureView)initWithCoder:(id)a3;
- (_TtC9AirDropUI25AirDropSystemApertureView)initWithFrame:(CGRect)a3;
@end

@implementation AirDropSystemApertureView

- (_TtC9AirDropUI25AirDropSystemApertureView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AirDropSystemApertureView();
  return [(AirDropSystemApertureView *)&v3 initWithFrame:0.0, 0.0, 23.0, 23.0];
}

- (_TtC9AirDropUI25AirDropSystemApertureView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  v4 = 48.3333;
  if ((a4 + 1) < 5)
  {
    v4 = 23.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC9AirDropUI25AirDropSystemApertureView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end