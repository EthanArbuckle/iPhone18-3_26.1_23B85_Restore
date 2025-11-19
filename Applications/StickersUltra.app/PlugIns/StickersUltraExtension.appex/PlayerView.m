@interface PlayerView
+ (Class)layerClass;
- (_TtC22StickersUltraExtension10PlayerView)initWithCoder:(id)a3;
- (_TtC22StickersUltraExtension10PlayerView)initWithFrame:(CGRect)a3;
@end

@implementation PlayerView

+ (Class)layerClass
{
  sub_10000B77C(0, &qword_1000B24F8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC22StickersUltraExtension10PlayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_playerItem) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlayerView();
  return [(PlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22StickersUltraExtension10PlayerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_playerItem) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlayerView();
  v4 = a3;
  v5 = [(PlayerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end