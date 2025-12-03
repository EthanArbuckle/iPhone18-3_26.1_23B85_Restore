@interface OBTableView
- (CGSize)intrinsicContentSize;
- (_TtC6FindMy11OBTableView)initWithCoder:(id)coder;
- (_TtC6FindMy11OBTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
@end

@implementation OBTableView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(OBTableView *)selfCopy layoutIfNeeded];
  [(OBTableView *)selfCopy contentSize];
  v4 = v3;

  v5 = ceil(v4) + 1.0;
  v6 = UIViewNoIntrinsicMetric;
  result.height = v5;
  result.width = v6;
  return result;
}

- (_TtC6FindMy11OBTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for OBTableView();
  return [(OBTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC6FindMy11OBTableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OBTableView();
  coderCopy = coder;
  v5 = [(OBTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end