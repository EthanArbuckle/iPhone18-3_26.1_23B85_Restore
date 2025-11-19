@interface RadioGenreCell
- (_TtC5Media14RadioGenreCell)initWithCoder:(id)a3;
- (_TtC5Media14RadioGenreCell)initWithFrame:(CGRect)a3;
@end

@implementation RadioGenreCell

- (_TtC5Media14RadioGenreCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtC5Media14RadioGenreCell)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media14RadioGenreCell_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media14RadioGenreCell_subtitle);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for RadioGenreCell();
  v6 = a3;
  v7 = [(RadioGenreCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end