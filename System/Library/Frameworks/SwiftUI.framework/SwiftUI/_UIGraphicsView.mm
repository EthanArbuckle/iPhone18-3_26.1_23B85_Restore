@interface _UIGraphicsView
- (_TtC7SwiftUI15_UIGraphicsView)initWithCoder:(id)coder;
- (_TtC7SwiftUI15_UIGraphicsView)initWithFrame:(CGRect)frame;
@end

@implementation _UIGraphicsView

- (_TtC7SwiftUI15_UIGraphicsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UIGraphicsView();
  return [(_UIGraphicsView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUI15_UIGraphicsView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIGraphicsView();
  coderCopy = coder;
  v5 = [(_UIGraphicsView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end