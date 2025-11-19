@interface ImagelessMPButton
- (_TtC12NowPlayingUIP33_20B7ED5F4C86462350B4C8940E4EFBD517ImagelessMPButton)initWithCoder:(id)a3;
- (_TtC12NowPlayingUIP33_20B7ED5F4C86462350B4C8940E4EFBD517ImagelessMPButton)initWithFrame:(CGRect)a3;
@end

@implementation ImagelessMPButton

- (_TtC12NowPlayingUIP33_20B7ED5F4C86462350B4C8940E4EFBD517ImagelessMPButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ImagelessMPButton();
  return [(ImagelessMPButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12NowPlayingUIP33_20B7ED5F4C86462350B4C8940E4EFBD517ImagelessMPButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImagelessMPButton();
  v4 = a3;
  v5 = [(ImagelessMPButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end