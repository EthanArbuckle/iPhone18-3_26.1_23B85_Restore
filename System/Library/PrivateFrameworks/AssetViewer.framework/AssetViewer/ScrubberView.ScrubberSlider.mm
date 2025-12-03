@interface ScrubberView.ScrubberSlider
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (_TtCC11AssetViewer12ScrubberView14ScrubberSlider)initWithFrame:(CGRect)frame;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)setValue:(float)value animated:(BOOL)animated;
@end

@implementation ScrubberView.ScrubberSlider

- (void)setValue:(float)value animated:(BOOL)animated
{
  selfCopy = self;
  sub_241285068(animated, value);
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGRectGetMidY(v18);
  UIFloorToViewScale();
  v11 = v10;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v12 = (CGRectGetWidth(v19) + -8.0) * value;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MinX = CGRectGetMinX(v20);

  v14 = MinX + v12;
  v15 = 9.0;
  v16 = 9.0;
  v17 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v17;
  result.origin.x = v14;
  return result;
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  MinX = CGRectGetMinX(bounds);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetMidY(v13) + -2.5;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetWidth(v14);
  v10 = 5.0;
  v11 = MinX;
  v12 = v8;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  LOBYTE(event) = sub_2412852DC(touchCopy, event);

  return event & 1;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  LOBYTE(event) = sub_241285404(touchCopy, event);

  return event & 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  sub_2412855C8(touch, event);
}

- (void)cancelTrackingWithEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ScrubberView.ScrubberSlider();
  eventCopy = event;
  v5 = v10.receiver;
  [(ScrubberView.ScrubberSlider *)&v10 cancelTrackingWithEvent:eventCopy];
  v6 = &v5[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch];
  v7 = *&v5[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch];
  v8 = *&v5[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 8];
  v9 = v5[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 16];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_241284EAC(v7, v8, v9);

  v5[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch] = 0;
}

- (_TtCC11AssetViewer12ScrubberView14ScrubberSlider)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_translationFromTrailingTouch);
  *v7 = 0;
  v7[1] = 0;
  v8 = self + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch;
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = self + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedValue;
  *v9 = 0;
  v9[4] = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_normalizer) = 1065353216;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed) = 1065353216;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ScrubberView.ScrubberSlider();
  return [(ScrubberView.ScrubberSlider *)&v11 initWithFrame:x, y, width, height];
}

@end