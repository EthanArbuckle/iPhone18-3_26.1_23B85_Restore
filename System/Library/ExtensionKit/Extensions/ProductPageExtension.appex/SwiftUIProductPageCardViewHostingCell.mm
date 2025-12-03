@interface SwiftUIProductPageCardViewHostingCell
- (_TtC20ProductPageExtension37SwiftUIProductPageCardViewHostingCell)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension37SwiftUIProductPageCardViewHostingCell)initWithFrame:(CGRect)frame;
@end

@implementation SwiftUIProductPageCardViewHostingCell

- (_TtC20ProductPageExtension37SwiftUIProductPageCardViewHostingCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
  return [(SwiftUIViewHostingCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20ProductPageExtension37SwiftUIProductPageCardViewHostingCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
  coderCopy = coder;
  v5 = [(SwiftUIViewHostingCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end