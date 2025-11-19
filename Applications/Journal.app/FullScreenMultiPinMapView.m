@interface FullScreenMultiPinMapView
- (void)didMoveToWindow;
- (void)textFieldDidChange:(id)a3;
@end

@implementation FullScreenMultiPinMapView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FullScreenMultiPinMapView();
  v2 = v3.receiver;
  [(FullScreenMultiPinMapView *)&v3 didMoveToWindow];
  sub_10053DC9C();
}

- (void)textFieldDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10053C8AC(v4);
}

@end