@interface GEOAPUploadLatencyBarView
- (_TtC4Maps25GEOAPUploadLatencyBarView)initWithCoder:(id)a3;
- (_TtC4Maps25GEOAPUploadLatencyBarView)initWithFrame:(CGRect)a3;
@end

@implementation GEOAPUploadLatencyBarView

- (_TtC4Maps25GEOAPUploadLatencyBarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_indicatorRects) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + v7) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for GEOAPUploadLatencyBarView();
  v8 = [(GEOAPUploadLatencyBarView *)&v10 initWithFrame:x, y, width, height];
  [(GEOAPUploadLatencyBarView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v8;
}

- (_TtC4Maps25GEOAPUploadLatencyBarView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_indicatorRects) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + v4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GEOAPUploadLatencyBarView();
  v5 = a3;
  v6 = [(GEOAPUploadLatencyBarView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end