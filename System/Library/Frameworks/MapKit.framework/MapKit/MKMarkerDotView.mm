@interface MKMarkerDotView
- (MKMarkerDotView)initWithMarkerStyle:(id)style;
- (void)updateWithMarkerStyle:(id)style;
@end

@implementation MKMarkerDotView

- (void)updateWithMarkerStyle:(id)style
{
  v6.receiver = self;
  v6.super_class = MKMarkerDotView;
  styleCopy = style;
  [(MKMarkerView *)&v6 updateWithMarkerStyle:styleCopy];
  dotImage = [styleCopy dotImage];

  [(MKMarkerView *)self _updateWithImage:dotImage];
}

- (MKMarkerDotView)initWithMarkerStyle:(id)style
{
  styleCopy = style;
  dotImage = [styleCopy dotImage];
  v8.receiver = self;
  v8.super_class = MKMarkerDotView;
  v6 = [(MKMarkerView *)&v8 initWithImage:dotImage];

  if (v6)
  {
    [(MKMarkerDotView *)v6 updateWithMarkerStyle:styleCopy];
  }

  return v6;
}

@end