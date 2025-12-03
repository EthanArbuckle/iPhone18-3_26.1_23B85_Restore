@interface IntrinsicTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC7Measure18IntrinsicTableView)initWithCoder:(id)coder;
- (_TtC7Measure18IntrinsicTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setContentSize:(CGSize)size;
@end

@implementation IntrinsicTableView

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(IntrinsicTableView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v5 = v6.receiver;
  [(IntrinsicTableView *)&v6 setContentSize:width, height];
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  [(IntrinsicTableView *)selfCopy layoutIfNeeded];
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(IntrinsicTableView *)&v9 contentSize];
  v6 = v5;

  v7 = UIViewNoIntrinsicMetric;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC7Measure18IntrinsicTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(IntrinsicTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC7Measure18IntrinsicTableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(IntrinsicTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end