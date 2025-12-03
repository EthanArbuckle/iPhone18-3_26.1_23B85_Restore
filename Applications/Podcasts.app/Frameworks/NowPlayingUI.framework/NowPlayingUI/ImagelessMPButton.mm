@interface ImagelessMPButton
- (_TtC12NowPlayingUIP33_20B7ED5F4C86462350B4C8940E4EFBD517ImagelessMPButton)initWithCoder:(id)coder;
- (_TtC12NowPlayingUIP33_20B7ED5F4C86462350B4C8940E4EFBD517ImagelessMPButton)initWithFrame:(CGRect)frame;
@end

@implementation ImagelessMPButton

- (_TtC12NowPlayingUIP33_20B7ED5F4C86462350B4C8940E4EFBD517ImagelessMPButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ImagelessMPButton();
  return [(ImagelessMPButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12NowPlayingUIP33_20B7ED5F4C86462350B4C8940E4EFBD517ImagelessMPButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImagelessMPButton();
  coderCopy = coder;
  v5 = [(ImagelessMPButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end