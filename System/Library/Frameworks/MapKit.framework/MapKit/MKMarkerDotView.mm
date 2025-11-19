@interface MKMarkerDotView
- (MKMarkerDotView)initWithMarkerStyle:(id)a3;
- (void)updateWithMarkerStyle:(id)a3;
@end

@implementation MKMarkerDotView

- (void)updateWithMarkerStyle:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKMarkerDotView;
  v4 = a3;
  [(MKMarkerView *)&v6 updateWithMarkerStyle:v4];
  v5 = [v4 dotImage];

  [(MKMarkerView *)self _updateWithImage:v5];
}

- (MKMarkerDotView)initWithMarkerStyle:(id)a3
{
  v4 = a3;
  v5 = [v4 dotImage];
  v8.receiver = self;
  v8.super_class = MKMarkerDotView;
  v6 = [(MKMarkerView *)&v8 initWithImage:v5];

  if (v6)
  {
    [(MKMarkerDotView *)v6 updateWithMarkerStyle:v4];
  }

  return v6;
}

@end