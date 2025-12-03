@interface IntrinsicSizeAdjustingTableView
- (CGSize)intrinsicContentSize;
- (_TtC11Diagnostics31IntrinsicSizeAdjustingTableView)initWithCoder:(id)coder;
- (_TtC11Diagnostics31IntrinsicSizeAdjustingTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
@end

@implementation IntrinsicSizeAdjustingTableView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(IntrinsicSizeAdjustingTableView *)selfCopy layoutIfNeeded];
  [(IntrinsicSizeAdjustingTableView *)selfCopy contentSize];
  v4 = v3;

  v5 = ceil(v4);
  v6 = UIViewNoIntrinsicMetric;
  result.height = v5;
  result.width = v6;
  return result;
}

- (_TtC11Diagnostics31IntrinsicSizeAdjustingTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for IntrinsicSizeAdjustingTableView();
  return [(IntrinsicSizeAdjustingTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC11Diagnostics31IntrinsicSizeAdjustingTableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for IntrinsicSizeAdjustingTableView();
  coderCopy = coder;
  v5 = [(IntrinsicSizeAdjustingTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end