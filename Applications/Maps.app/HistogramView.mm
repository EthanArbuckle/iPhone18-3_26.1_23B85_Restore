@interface HistogramView
- (_TtC4Maps13HistogramView)initWithCoder:(id)coder;
- (_TtC4Maps13HistogramView)initWithFrame:(CGRect)frame;
@end

@implementation HistogramView

- (_TtC4Maps13HistogramView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps13HistogramView_totalEventCount) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for HistogramView();
  height = [(HistogramView *)&v9 initWithFrame:x, y, width, height];
  [(HistogramView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  return height;
}

- (_TtC4Maps13HistogramView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps13HistogramView_totalEventCount) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HistogramView();
  coderCopy = coder;
  v5 = [(HistogramView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end