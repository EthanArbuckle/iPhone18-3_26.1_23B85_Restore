@interface ScrubberView.ScrubberSlider
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (_TtCC11AssetViewer12ScrubberView14ScrubberSlider)initWithFrame:(CGRect)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)setValue:(float)a3 animated:(BOOL)a4;
@end

@implementation ScrubberView.ScrubberSlider

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_241285068(a4, a3);
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
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
  v12 = (CGRectGetWidth(v19) + -8.0) * a5;
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

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MinX = CGRectGetMinX(a3);
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

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LOBYTE(a4) = sub_2412852DC(v6, a4);

  return a4 & 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LOBYTE(a4) = sub_241285404(v6, a4);

  return a4 & 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_2412855C8(a3, a4);
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ScrubberView.ScrubberSlider();
  v4 = a3;
  v5 = v10.receiver;
  [(ScrubberView.ScrubberSlider *)&v10 cancelTrackingWithEvent:v4];
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

- (_TtCC11AssetViewer12ScrubberView14ScrubberSlider)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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