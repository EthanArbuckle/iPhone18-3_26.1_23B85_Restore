@interface HistogramView
- (_TtC4Maps13HistogramView)initWithCoder:(id)a3;
- (_TtC4Maps13HistogramView)initWithFrame:(CGRect)a3;
@end

@implementation HistogramView

- (_TtC4Maps13HistogramView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps13HistogramView_totalEventCount) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for HistogramView();
  v7 = [(HistogramView *)&v9 initWithFrame:x, y, width, height];
  [(HistogramView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v7;
}

- (_TtC4Maps13HistogramView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps13HistogramView_totalEventCount) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HistogramView();
  v4 = a3;
  v5 = [(HistogramView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end