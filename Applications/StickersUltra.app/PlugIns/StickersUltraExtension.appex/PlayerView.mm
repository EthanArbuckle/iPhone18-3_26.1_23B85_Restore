@interface PlayerView
+ (Class)layerClass;
- (_TtC22StickersUltraExtension10PlayerView)initWithCoder:(id)coder;
- (_TtC22StickersUltraExtension10PlayerView)initWithFrame:(CGRect)frame;
@end

@implementation PlayerView

+ (Class)layerClass
{
  sub_10000B77C(0, &qword_1000B24F8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC22StickersUltraExtension10PlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_playerItem) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlayerView();
  return [(PlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22StickersUltraExtension10PlayerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_playerItem) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlayerView();
  coderCopy = coder;
  v5 = [(PlayerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end