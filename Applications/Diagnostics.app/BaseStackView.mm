@interface BaseStackView
- (_TtC11Diagnostics13BaseStackView)initWithCoder:(id)coder;
- (_TtC11Diagnostics13BaseStackView)initWithFrame:(CGRect)frame;
@end

@implementation BaseStackView

- (_TtC11Diagnostics13BaseStackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BaseStackView();
  return [(BaseStackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11Diagnostics13BaseStackView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end