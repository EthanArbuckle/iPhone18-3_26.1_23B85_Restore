@interface QRCodeOverlayViewController.ContainerView
- (void)layoutSubviews;
- (void)updateColor;
@end

@implementation QRCodeOverlayViewController.ContainerView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v2 = v4.receiver;
  [(QRCodeOverlayViewController.ContainerView *)&v4 layoutSubviews];
  sub_100006F10(0, &qword_100644298);
  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  static CATransaction.performWithoutAnimation(_:)(sub_1003BBCA0);
}

- (void)updateColor
{
  selfCopy = self;
  sub_1003BAD70();
}

@end