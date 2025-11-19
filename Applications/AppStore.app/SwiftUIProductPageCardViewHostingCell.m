@interface SwiftUIProductPageCardViewHostingCell
- (_TtC8AppStore37SwiftUIProductPageCardViewHostingCell)initWithCoder:(id)a3;
- (_TtC8AppStore37SwiftUIProductPageCardViewHostingCell)initWithFrame:(CGRect)a3;
@end

@implementation SwiftUIProductPageCardViewHostingCell

- (_TtC8AppStore37SwiftUIProductPageCardViewHostingCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
  return [(SwiftUIViewHostingCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8AppStore37SwiftUIProductPageCardViewHostingCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
  v4 = a3;
  v5 = [(SwiftUIViewHostingCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end