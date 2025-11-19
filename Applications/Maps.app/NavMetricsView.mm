@interface NavMetricsView
- (BOOL)hasAccessory;
- (CGSize)accessoriesViewSize;
- (CGSize)metricsViewSize;
- (_TtC4Maps14NavMetricsView)initWithFrame:(CGRect)a3;
- (_TtC4Maps14NavMetricsView)initWithParentViewController:(id)a3 delegate:(id)a4 eta:(id)a5 isCarPlay:(BOOL)a6;
- (void)didMoveToWindow;
- (void)setAccessoriesViewSize:(CGSize)a3;
- (void)setEta:(id)a3;
- (void)setExpansionProgress:(double)a3;
- (void)setMetricsViewSize:(CGSize)a3;
- (void)setViewSize:(CGSize)a3;
@end

@implementation NavMetricsView

- (void)setEta:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps14NavMetricsView_eta);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps14NavMetricsView_eta) = a3;
  v4 = a3;
  v5 = self;
  sub_10006D77C(v6);
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NavMetricsView();
  v2 = v3.receiver;
  [(NavMetricsView *)&v3 didMoveToWindow];
  sub_1004FD1C0(0);
  sub_10006DBC0();
}

- (void)setViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1004FC130(width, height);
}

- (CGSize)metricsViewSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps14NavMetricsView_metricsViewSize);
  v3 = *&self->parentViewController[OBJC_IVAR____TtC4Maps14NavMetricsView_metricsViewSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setMetricsViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1004FC240(width, height);
}

- (CGSize)accessoriesViewSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesViewSize);
  v3 = *&self->parentViewController[OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesViewSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setAccessoriesViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1004FC2C8(width, height);
}

- (BOOL)hasAccessory
{
  v2 = self;
  v3 = sub_1004FC398();

  return v3 & 1;
}

- (void)setExpansionProgress:(double)a3
{
  v4 = self;
  sub_1004FD128(a3);
}

- (_TtC4Maps14NavMetricsView)initWithParentViewController:(id)a3 delegate:(id)a4 eta:(id)a5 isCarPlay:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  return sub_1004FD280(v9, a4, a5, v6);
}

- (_TtC4Maps14NavMetricsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end