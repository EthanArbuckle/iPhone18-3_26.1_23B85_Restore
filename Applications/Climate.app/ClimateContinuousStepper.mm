@interface ClimateContinuousStepper
- (NSUUID)trackerUUID;
- (void)didSlide:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)siblingDidStartSliding;
- (void)siblingDidStopSlidingWithWasIncreasing:(BOOL)a3;
- (void)siblingDidUpdateWithProgress:(double)a3;
@end

@implementation ClimateContinuousStepper

- (NSUUID)trackerUUID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_trackerUUID, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000B85CC();
}

- (void)didSlide:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B9238(v4);
}

- (void)siblingDidStartSliding
{
  v2 = self;
  sub_1000BA720();
}

- (void)siblingDidUpdateWithProgress:(double)a3
{
  v4 = self;
  sub_1000BA89C(a3);
}

- (void)siblingDidStopSlidingWithWasIncreasing:(BOOL)a3
{
  v4 = self;
  sub_1000BA9E0(a3);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClimateContinuousStepper();
  v6 = a3;
  v7 = a4;
  v8 = v9.receiver;
  [(ClimateContinuousStepper *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  sub_1000B7D34();
}

@end