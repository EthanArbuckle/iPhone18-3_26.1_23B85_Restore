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
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CATransaction);
  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  static CATransaction.performWithoutAnimation(_:)(closure #1 in QRCodeOverlayViewController.ContainerView.layoutSubviews()partial apply);
}

- (void)updateColor
{
  v2 = self;
  QRCodeOverlayViewController.ContainerView.updateColor()();
}

@end