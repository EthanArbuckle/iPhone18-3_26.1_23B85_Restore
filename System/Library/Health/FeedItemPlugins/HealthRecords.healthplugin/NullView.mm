@interface NullView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC13HealthRecords8NullView)initWithCoder:(id)a3;
- (_TtC13HealthRecords8NullView)initWithFrame:(CGRect)a3;
@end

@implementation NullView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC13HealthRecords8NullView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NullView();
  return [(NullView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC13HealthRecords8NullView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NullView();
  v4 = a3;
  v5 = [(NullView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end