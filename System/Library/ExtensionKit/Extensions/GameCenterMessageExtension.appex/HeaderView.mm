@interface HeaderView
- (UILabel)label;
- (_TtC26GameCenterMessageExtension10HeaderView)initWithCoder:(id)coder;
- (_TtC26GameCenterMessageExtension10HeaderView)initWithFrame:(CGRect)frame;
@end

@implementation HeaderView

- (UILabel)label
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC26GameCenterMessageExtension10HeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for HeaderView();
  return [(HeaderView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26GameCenterMessageExtension10HeaderView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for HeaderView();
  coderCopy = coder;
  v6 = [(HeaderView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end