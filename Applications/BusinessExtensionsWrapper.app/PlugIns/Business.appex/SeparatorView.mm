@interface SeparatorView
- (_TtC8Business13SeparatorView)initWithCoder:(id)coder;
- (_TtC8Business13SeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation SeparatorView

- (_TtC8Business13SeparatorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SeparatorView();
  return [(SeparatorView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8Business13SeparatorView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SeparatorView();
  coderCopy = coder;
  v5 = [(SeparatorView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end