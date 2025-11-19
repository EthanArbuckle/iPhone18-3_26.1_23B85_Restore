@interface BaseTableView
- (_TtC11Diagnostics13BaseTableView)initWithCoder:(id)a3;
- (_TtC11Diagnostics13BaseTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
@end

@implementation BaseTableView

- (_TtC11Diagnostics13BaseTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for BaseTableView();
  return [(BaseTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC11Diagnostics13BaseTableView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end