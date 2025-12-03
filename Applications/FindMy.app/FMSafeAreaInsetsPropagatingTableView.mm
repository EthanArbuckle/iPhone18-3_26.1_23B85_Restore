@interface FMSafeAreaInsetsPropagatingTableView
- (_TtC6FindMy36FMSafeAreaInsetsPropagatingTableView)initWithCoder:(id)coder;
- (_TtC6FindMy36FMSafeAreaInsetsPropagatingTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
@end

@implementation FMSafeAreaInsetsPropagatingTableView

- (_TtC6FindMy36FMSafeAreaInsetsPropagatingTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMSafeAreaInsetsPropagatingTableView();
  return [(FMSafeAreaInsetsPropagatingTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC6FindMy36FMSafeAreaInsetsPropagatingTableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSafeAreaInsetsPropagatingTableView();
  coderCopy = coder;
  v5 = [(FMSafeAreaInsetsPropagatingTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end