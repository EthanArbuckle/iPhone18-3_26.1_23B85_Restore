@interface BaseStackView
- (_TtC11Diagnostics13BaseStackView)initWithCoder:(id)a3;
- (_TtC11Diagnostics13BaseStackView)initWithFrame:(CGRect)a3;
@end

@implementation BaseStackView

- (_TtC11Diagnostics13BaseStackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BaseStackView();
  return [(BaseStackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11Diagnostics13BaseStackView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end