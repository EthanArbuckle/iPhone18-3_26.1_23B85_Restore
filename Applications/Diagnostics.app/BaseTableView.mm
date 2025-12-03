@interface BaseTableView
- (_TtC11Diagnostics13BaseTableView)initWithCoder:(id)coder;
- (_TtC11Diagnostics13BaseTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
@end

@implementation BaseTableView

- (_TtC11Diagnostics13BaseTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for BaseTableView();
  return [(BaseTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC11Diagnostics13BaseTableView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end