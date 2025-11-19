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
  sub_1000D3B98(0, &qword_1006F5478);
  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  static CATransaction.performWithoutAnimation(_:)(sub_10044FF58);
}

- (void)updateColor
{
  v2 = self;
  sub_10044F090();
}

@end