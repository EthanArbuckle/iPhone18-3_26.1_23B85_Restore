@interface HeaderView
- (UILabel)label;
- (_TtC26GameCenterMessageExtension10HeaderView)initWithCoder:(id)a3;
- (_TtC26GameCenterMessageExtension10HeaderView)initWithFrame:(CGRect)a3;
@end

@implementation HeaderView

- (UILabel)label
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC26GameCenterMessageExtension10HeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for HeaderView();
  return [(HeaderView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26GameCenterMessageExtension10HeaderView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for HeaderView();
  v5 = a3;
  v6 = [(HeaderView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end