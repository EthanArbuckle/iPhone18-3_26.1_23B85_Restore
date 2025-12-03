@interface NullView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC13HealthRecords8NullView)initWithCoder:(id)coder;
- (_TtC13HealthRecords8NullView)initWithFrame:(CGRect)frame;
@end

@implementation NullView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC13HealthRecords8NullView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NullView();
  return [(NullView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC13HealthRecords8NullView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NullView();
  coderCopy = coder;
  v5 = [(NullView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end