@interface RadioGenreCell
- (_TtC5Media14RadioGenreCell)initWithCoder:(id)coder;
- (_TtC5Media14RadioGenreCell)initWithFrame:(CGRect)frame;
@end

@implementation RadioGenreCell

- (_TtC5Media14RadioGenreCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media14RadioGenreCell_title);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media14RadioGenreCell_subtitle);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RadioGenreCell();
  return [(RadioGenreCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC5Media14RadioGenreCell)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media14RadioGenreCell_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media14RadioGenreCell_subtitle);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for RadioGenreCell();
  coderCopy = coder;
  v7 = [(RadioGenreCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end