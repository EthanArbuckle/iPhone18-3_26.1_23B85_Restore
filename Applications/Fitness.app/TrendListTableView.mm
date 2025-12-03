@interface TrendListTableView
- (_TtC10FitnessApp18TrendListTableView)initWithCoder:(id)coder;
- (_TtC10FitnessApp18TrendListTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
@end

@implementation TrendListTableView

- (_TtC10FitnessApp18TrendListTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TrendListTableView();
  return [(TrendListTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC10FitnessApp18TrendListTableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TrendListTableView();
  coderCopy = coder;
  v5 = [(TrendListTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end