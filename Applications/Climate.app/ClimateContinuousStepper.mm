@interface ClimateContinuousStepper
- (NSUUID)trackerUUID;
- (void)didSlide:(id)slide;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)siblingDidStartSliding;
- (void)siblingDidStopSlidingWithWasIncreasing:(BOOL)increasing;
- (void)siblingDidUpdateWithProgress:(double)progress;
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
  selfCopy = self;
  sub_1000B85CC();
}

- (void)didSlide:(id)slide
{
  slideCopy = slide;
  selfCopy = self;
  sub_1000B9238(slideCopy);
}

- (void)siblingDidStartSliding
{
  selfCopy = self;
  sub_1000BA720();
}

- (void)siblingDidUpdateWithProgress:(double)progress
{
  selfCopy = self;
  sub_1000BA89C(progress);
}

- (void)siblingDidStopSlidingWithWasIncreasing:(BOOL)increasing
{
  selfCopy = self;
  sub_1000BA9E0(increasing);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClimateContinuousStepper();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v9.receiver;
  [(ClimateContinuousStepper *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  sub_1000B7D34();
}

@end