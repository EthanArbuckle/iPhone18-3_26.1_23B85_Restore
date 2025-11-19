@interface IntrinsicSizeAdjustingTableView
- (CGSize)intrinsicContentSize;
- (_TtC11Diagnostics31IntrinsicSizeAdjustingTableView)initWithCoder:(id)a3;
- (_TtC11Diagnostics31IntrinsicSizeAdjustingTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
@end

@implementation IntrinsicSizeAdjustingTableView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(IntrinsicSizeAdjustingTableView *)v2 layoutIfNeeded];
  [(IntrinsicSizeAdjustingTableView *)v2 contentSize];
  v4 = v3;

  v5 = ceil(v4);
  v6 = UIViewNoIntrinsicMetric;
  result.height = v5;
  result.width = v6;
  return result;
}

- (_TtC11Diagnostics31IntrinsicSizeAdjustingTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for IntrinsicSizeAdjustingTableView();
  return [(IntrinsicSizeAdjustingTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC11Diagnostics31IntrinsicSizeAdjustingTableView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for IntrinsicSizeAdjustingTableView();
  v4 = a3;
  v5 = [(IntrinsicSizeAdjustingTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end