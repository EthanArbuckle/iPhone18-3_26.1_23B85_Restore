@interface TrendListTableView
- (_TtC10FitnessApp18TrendListTableView)initWithCoder:(id)a3;
- (_TtC10FitnessApp18TrendListTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
@end

@implementation TrendListTableView

- (_TtC10FitnessApp18TrendListTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TrendListTableView();
  return [(TrendListTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC10FitnessApp18TrendListTableView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TrendListTableView();
  v4 = a3;
  v5 = [(TrendListTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end