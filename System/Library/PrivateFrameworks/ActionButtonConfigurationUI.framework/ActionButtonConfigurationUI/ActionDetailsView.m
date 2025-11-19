@interface ActionDetailsView
- (_TtC27ActionButtonConfigurationUI17ActionDetailsView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)pageControlValueChanged;
@end

@implementation ActionDetailsView

- (void)layoutSubviews
{
  v2 = self;
  sub_23DE04320();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  v9 = sub_23DE04D44(x, y);

  return v9;
}

- (void)pageControlValueChanged
{
  v2 = self;
  sub_23DE047B0();
}

- (_TtC27ActionButtonConfigurationUI17ActionDetailsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end