@interface OBTableView
- (CGSize)intrinsicContentSize;
- (_TtC6FindMy11OBTableView)initWithCoder:(id)a3;
- (_TtC6FindMy11OBTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
@end

@implementation OBTableView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(OBTableView *)v2 layoutIfNeeded];
  [(OBTableView *)v2 contentSize];
  v4 = v3;

  v5 = ceil(v4) + 1.0;
  v6 = UIViewNoIntrinsicMetric;
  result.height = v5;
  result.width = v6;
  return result;
}

- (_TtC6FindMy11OBTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for OBTableView();
  return [(OBTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC6FindMy11OBTableView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OBTableView();
  v4 = a3;
  v5 = [(OBTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end