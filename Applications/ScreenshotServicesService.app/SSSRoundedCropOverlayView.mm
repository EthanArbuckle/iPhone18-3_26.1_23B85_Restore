@interface SSSRoundedCropOverlayView
- (SSSRoundedCropOverlayView)initWithFrame:(CGRect)a3;
- (UIColor)borderColor;
- (double)borderWidth;
- (double)cornerRadius;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBorderColor:(id)a3;
@end

@implementation SSSRoundedCropOverlayView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(SSSRoundedCropOverlayView *)&v3 didMoveToWindow];
  sub_100071C2C(0);
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR___SSSRoundedCropOverlayView_cornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (UIColor)borderColor
{
  v3 = OBJC_IVAR___SSSRoundedCropOverlayView_borderColor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setBorderColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100072820(a3);
}

- (double)borderWidth
{
  v3 = OBJC_IVAR___SSSRoundedCropOverlayView_borderWidth;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(SSSRoundedCropOverlayView *)&v7 layoutSubviews];
  [v2 bounds];
  v9.origin.x = v3;
  v9.origin.y = v4;
  v9.size.width = v5;
  v9.size.height = v6;
  v8 = *&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect];
  *&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect] = v9;
  if (!CGRectEqualToRect(v8, v9))
  {
    sub_100071C2C(0);
  }

  sub_1000729C8();
}

- (int64_t)accessibilityElementCount
{
  v3 = OBJC_IVAR___SSSRoundedCropOverlayView_cropHandleAccessibilityElements;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  if (v4 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v4 = self;
  sub_100072DC4(a3, v13);

  v5 = v14;
  if (v14)
  {
    v6 = sub_10006441C(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100064460(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = sub_100073000(v7);

  sub_100064460(v7);
  return v5;
}

- (SSSRoundedCropOverlayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end