@interface FMTableView
- (_TtC6FindMy11FMTableView)initWithCoder:(id)coder;
- (_TtC6FindMy11FMTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
@end

@implementation FMTableView

- (_TtC6FindMy11FMTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = OBJC_IVAR____TtC6FindMy11FMTableView_newIndexPath;
  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
  v13.receiver = self;
  v13.super_class = type metadata accessor for FMTableView();
  return [(FMTableView *)&v13 initWithFrame:style style:x, y, width, height];
}

- (_TtC6FindMy11FMTableView)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC6FindMy11FMTableView_newIndexPath;
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMTableView();
  coderCopy = coder;
  v8 = [(FMTableView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end