@interface PlayerView
+ (Class)layerClass;
- (_TtC10StickerKit10PlayerView)initWithCoder:(id)coder;
- (_TtC10StickerKit10PlayerView)initWithFrame:(CGRect)frame;
@end

@implementation PlayerView

+ (Class)layerClass
{
  sub_19A5F5028(0, &qword_1EAFCF8D0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC10StickerKit10PlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit10PlayerView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit10PlayerView_playerItem) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlayerView();
  return [(PlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10StickerKit10PlayerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit10PlayerView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit10PlayerView_playerItem) = 0;
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