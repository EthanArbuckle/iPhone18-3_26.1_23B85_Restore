@interface NavMetricsView
- (BOOL)hasAccessory;
- (CGSize)accessoriesViewSize;
- (CGSize)metricsViewSize;
- (_TtC4Maps14NavMetricsView)initWithFrame:(CGRect)frame;
- (_TtC4Maps14NavMetricsView)initWithParentViewController:(id)controller delegate:(id)delegate eta:(id)eta isCarPlay:(BOOL)play;
- (void)didMoveToWindow;
- (void)setAccessoriesViewSize:(CGSize)size;
- (void)setEta:(id)eta;
- (void)setExpansionProgress:(double)progress;
- (void)setMetricsViewSize:(CGSize)size;
- (void)setViewSize:(CGSize)size;
@end

@implementation NavMetricsView

- (void)setEta:(id)eta
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps14NavMetricsView_eta);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps14NavMetricsView_eta) = eta;
  etaCopy = eta;
  selfCopy = self;
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

- (void)setViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
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

- (void)setMetricsViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
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

- (void)setAccessoriesViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1004FC2C8(width, height);
}

- (BOOL)hasAccessory
{
  selfCopy = self;
  v3 = sub_1004FC398();

  return v3 & 1;
}

- (void)setExpansionProgress:(double)progress
{
  selfCopy = self;
  sub_1004FD128(progress);
}

- (_TtC4Maps14NavMetricsView)initWithParentViewController:(id)controller delegate:(id)delegate eta:(id)eta isCarPlay:(BOOL)play
{
  playCopy = play;
  controllerCopy = controller;
  swift_unknownObjectRetain();
  etaCopy = eta;
  return sub_1004FD280(controllerCopy, delegate, eta, playCopy);
}

- (_TtC4Maps14NavMetricsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end