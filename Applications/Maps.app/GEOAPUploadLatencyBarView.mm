@interface GEOAPUploadLatencyBarView
- (_TtC4Maps25GEOAPUploadLatencyBarView)initWithCoder:(id)coder;
- (_TtC4Maps25GEOAPUploadLatencyBarView)initWithFrame:(CGRect)frame;
@end

@implementation GEOAPUploadLatencyBarView

- (_TtC4Maps25GEOAPUploadLatencyBarView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_indicatorRects) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + v7) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for GEOAPUploadLatencyBarView();
  height = [(GEOAPUploadLatencyBarView *)&v10 initWithFrame:x, y, width, height];
  [(GEOAPUploadLatencyBarView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  return height;
}

- (_TtC4Maps25GEOAPUploadLatencyBarView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_indicatorRects) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + v4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GEOAPUploadLatencyBarView();
  coderCopy = coder;
  v6 = [(GEOAPUploadLatencyBarView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end