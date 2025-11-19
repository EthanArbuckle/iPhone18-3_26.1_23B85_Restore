@interface UIKitPagingCell
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell)initWithCoder:(id)a3;
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell)initWithFrame:(CGRect)a3;
@end

@implementation UIKitPagingCell

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UIKitPagingCell();
  return [(UIKitPagingCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIKitPagingCell();
  v4 = a3;
  v5 = [(UIKitPagingCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end