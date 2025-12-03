@interface PlayerTimeControl
- (BOOL)isEnabled;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)bounds;
- (CGRect)thumbHitRect;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)alignmentRectInsets;
- (_TtC12NowPlayingUI17PlayerTimeControl)initWithFrame:(CGRect)frame;
- (double)accessibilityElapsedDuration;
- (double)accessibilityTotalDuration;
- (float)value;
- (void)accessibilityUpdateWithElapsedDuration:(double)duration;
- (void)dealloc;
- (void)detailScrubController:(id)controller didChangeScrubSpeed:(int64_t)speed;
- (void)detailScrubController:(id)controller didChangeValue:(float)value;
- (void)detailScrubControllerDidBeginScrubbing:(id)scrubbing;
- (void)detailScrubControllerDidEndScrubbing:(id)scrubbing;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)panGestureRecognized:(id)recognized;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category;
- (void)setBounds:(CGRect)bounds;
- (void)setEnabled:(BOOL)enabled;
- (void)tintColorDidChange;
@end

@implementation PlayerTimeControl

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink);
  if (v2)
  {
    selfCopy = self;
    [v2 invalidate];
    v4.receiver = selfCopy;
    v4.super_class = type metadata accessor for PlayerTimeControl();
    [(PlayerTimeControl *)&v4 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4BEE0();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_4C04C();
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = -6.0;
  v3 = 0.0;
  v4 = -1.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlayerTimeControl();
  [(PlayerTimeControl *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_4C22C(x, y, width, height);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_4C3CC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_4C4BC();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_4C694(eventCopy, x, y);

  return eventCopy & 1;
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlayerTimeControl();
  return [(PlayerTimeControl *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = type metadata accessor for PlayerTimeControl();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isEnabled = [(PlayerTimeControl *)&v9 isEnabled];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(PlayerTimeControl *)&v8 setEnabled:enabledCopy];
  sub_4C95C(isEnabled);
}

- (void)panGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  sub_4CBB0(recognizedCopy);
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category
{
  categoryCopy = category;
  selfCopy = self;
  sub_50468();
}

- (float)value
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint);
  if (v2)
  {
    selfCopy = self;
    [v2 constant];
    v5 = v4;
    [(PlayerTimeControl *)selfCopy bounds];
    Width = CGRectGetWidth(v8);

    return v5 / Width;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGRect)thumbHitRect
{
  selfCopy = self;
  v3 = sub_4D0A0();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)detailScrubController:(id)controller didChangeValue:(float)value
{
  controllerCopy = controller;
  selfCopy = self;
  sub_508EC(value);
}

- (void)detailScrubController:(id)controller didChangeScrubSpeed:(int64_t)speed
{
  controllerCopy = controller;
  selfCopy = self;
  sub_50BCC(speed);
}

- (void)detailScrubControllerDidBeginScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  selfCopy = self;
  sub_50CDC();
}

- (void)detailScrubControllerDidEndScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  selfCopy = self;
  sub_50E0C();
}

- (double)accessibilityTotalDuration
{
  result = *&self->bufferUnselectedColor[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot];
  if (*(&self->remainingTrack + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot) == 2)
  {
    return 0.0;
  }

  return result;
}

- (double)accessibilityElapsedDuration
{
  v2 = self + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot;
  v3 = *(&self->remainingTrack + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot);
  result = 0.0;
  if (v3 != 2)
  {
    v5 = *(v2 + 5);
    v6 = *(v2 + 4);
    selfCopy = self;
    v10 = *(v2 + 1);
    v11 = *v2;
    sub_140A5C();
    v12[1] = v10;
    v12[0] = v11;
    v13 = v6;
    v14 = v5;
    v15 = v3 & 0x101;
    v16 = BYTE2(v3) & 1;
    ElapsedTimeForCurrentTime = MPCPlayerItemDurationSnapshotGetElapsedTimeForCurrentTime(v12, v8);

    return ElapsedTimeForCurrentTime;
  }

  return result;
}

- (void)accessibilityUpdateWithElapsedDuration:(double)duration
{
  selfCopy = self;
  sub_4E87C(duration);
}

- (_TtC12NowPlayingUI17PlayerTimeControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end