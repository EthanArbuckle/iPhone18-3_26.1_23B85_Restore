@interface SystemApertureAccessoryView
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9AirDropUI27SystemApertureAccessoryView)initWithCoder:(id)a3;
- (_TtC9AirDropUI27SystemApertureAccessoryView)initWithFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation SystemApertureAccessoryView

- (_TtC9AirDropUI27SystemApertureAccessoryView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SystemApertureAccessoryView();
  [(SystemApertureAccessoryView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SystemApertureAccessoryView();
  v7 = v10.receiver;
  [(SystemApertureAccessoryView *)&v10 setFrame:x, y, width, height];
  v8 = [*&v7[OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController] view];
  if (v8)
  {
    v9 = v8;
    [v7 bounds];
    [v9 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController) preferredContentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC9AirDropUI27SystemApertureAccessoryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end