@interface BulletCircleImageView
- (_TtC5Heart21BulletCircleImageView)initWithCoder:(id)a3;
- (_TtC5Heart21BulletCircleImageView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation BulletCircleImageView

- (_TtC5Heart21BulletCircleImageView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart21BulletCircleImageView____lazy_storage___iconView) = 0;
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v6 = self;
  v3 = UIGraphicsGetCurrentContext();
  if (v3)
  {
    v4 = v3;
    CGContextSetLineWidth(v3, 2.0);
    if (qword_2A17B0C38 != -1)
    {
      swift_once();
    }

    v5 = [qword_2A17B4040 CGColor];
    CGContextSetStrokeColorWithColor(v4, v5);

    [(BulletCircleImageView *)v6 bounds];
    v9 = CGRectInset(v8, 1.0, 1.0);
    CGContextAddEllipseInRect(v4, v9);
    CGContextStrokePath(v4);
  }
}

- (_TtC5Heart21BulletCircleImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end