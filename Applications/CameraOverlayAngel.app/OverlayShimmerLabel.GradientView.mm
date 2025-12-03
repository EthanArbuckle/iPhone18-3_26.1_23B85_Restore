@interface OverlayShimmerLabel.GradientView
- (_TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation OverlayShimmerLabel.GradientView

- (_TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView_left;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView_right;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIImageView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  [(OverlayShimmerLabel.GradientView *)selfCopy bounds];
  v2 = CGRectGetWidth(v7) * 0.5;
  [(OverlayShimmerLabel.GradientView *)selfCopy bounds];
  Height = CGRectGetHeight(v8);
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView_left) setFrame:{0.0, 0.0, v2, Height}];
  v4 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView_right);
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = v2;
  v9.size.height = Height;
  v10 = CGRectOffset(v9, v2, 0.0);
  [v4 setFrame:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
}

@end