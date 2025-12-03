@interface UIKitPagingCell
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell)initWithCoder:(id)coder;
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell)initWithFrame:(CGRect)frame;
@end

@implementation UIKitPagingCell

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UIKitPagingCell();
  return [(UIKitPagingCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIKitPagingCell();
  coderCopy = coder;
  v5 = [(UIKitPagingCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end