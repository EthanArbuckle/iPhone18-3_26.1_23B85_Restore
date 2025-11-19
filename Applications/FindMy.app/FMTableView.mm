@interface FMTableView
- (_TtC6FindMy11FMTableView)initWithCoder:(id)a3;
- (_TtC6FindMy11FMTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
@end

@implementation FMTableView

- (_TtC6FindMy11FMTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = OBJC_IVAR____TtC6FindMy11FMTableView_newIndexPath;
  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
  v13.receiver = self;
  v13.super_class = type metadata accessor for FMTableView();
  return [(FMTableView *)&v13 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC6FindMy11FMTableView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC6FindMy11FMTableView_newIndexPath;
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMTableView();
  v7 = a3;
  v8 = [(FMTableView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end