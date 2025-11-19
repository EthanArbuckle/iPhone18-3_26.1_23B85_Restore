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
  sub_100009130(0, &qword_100610548);
  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  static CATransaction.performWithoutAnimation(_:)(sub_10039A308);
}

- (void)updateColor
{
  v2 = self;
  sub_1003993D8();
}

@end