@interface ClimatePopoverTapView
- (_TtC7Climate21ClimatePopoverTapView)init;
- (_TtC7Climate21ClimatePopoverTapView)initWithCoder:(id)a3;
- (_TtC7Climate21ClimatePopoverTapView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ClimatePopoverTapView

- (_TtC7Climate21ClimatePopoverTapView)init
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC7Climate21ClimatePopoverTapView_tapHandler);
  v4 = type metadata accessor for ClimatePopoverTapView();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ClimatePopoverTapView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC7Climate21ClimatePopoverTapView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC7Climate21ClimatePopoverTapView_tapHandler);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Climate21ClimatePopoverTapView_tapHandler);
  if (v4)
  {
    v5 = self;
    sub_10001B054(v4);
    v4(0);

    sub_100003380(v4);
  }

  return 0;
}

- (_TtC7Climate21ClimatePopoverTapView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end