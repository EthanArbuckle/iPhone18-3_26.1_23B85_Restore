@interface SpatialPlatterTitleButton
- (CGSize)intrinsicContentSize;
- (_TtC7Measure25SpatialPlatterTitleButton)initWithCoder:(id)coder;
- (_TtC7Measure25SpatialPlatterTitleButton)initWithFrame:(CGRect)frame;
- (void)onButtonTouchDown;
- (void)onButtonTouchUp;
@end

@implementation SpatialPlatterTitleButton

- (_TtC7Measure25SpatialPlatterTitleButton)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_touchDownCallback);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_touchUpCallback);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_size);
  v3 = *&self->size[OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)onButtonTouchDown
{
  selfCopy = self;
  sub_1000EB294();
}

- (void)onButtonTouchUp
{
  selfCopy = self;
  sub_1000EB320();
}

- (_TtC7Measure25SpatialPlatterTitleButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end