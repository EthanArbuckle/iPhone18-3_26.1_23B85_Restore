@interface IntrinsicTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC7Measure18IntrinsicTableView)initWithCoder:(id)a3;
- (_TtC7Measure18IntrinsicTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)setContentSize:(CGSize)a3;
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

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v5 = v6.receiver;
  [(IntrinsicTableView *)&v6 setContentSize:width, height];
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  ObjectType = swift_getObjectType();
  v4 = self;
  [(IntrinsicTableView *)v4 layoutIfNeeded];
  v9.receiver = v4;
  v9.super_class = ObjectType;
  [(IntrinsicTableView *)&v9 contentSize];
  v6 = v5;

  v7 = UIViewNoIntrinsicMetric;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC7Measure18IntrinsicTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(IntrinsicTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC7Measure18IntrinsicTableView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(IntrinsicTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end