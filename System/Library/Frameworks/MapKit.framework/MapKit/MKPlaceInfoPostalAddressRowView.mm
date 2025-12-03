@interface MKPlaceInfoPostalAddressRowView
- (MKPlaceInfoPostalAddressRowView)initWithFrame:(CGRect)frame;
- (id)_valueString;
@end

@implementation MKPlaceInfoPostalAddressRowView

- (id)_valueString
{
  labeledValue = [(MKPlaceInfoContactRowView *)self labeledValue];
  value = [labeledValue value];

  return value;
}

- (MKPlaceInfoPostalAddressRowView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MKPlaceInfoPostalAddressRowView;
  v3 = [(MKPlaceInfoContactRowView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    valueLabel = [(MKPlaceInfoContactRowView *)v3 valueLabel];
    [valueLabel setLineBreakMode:0];
  }

  return v4;
}

@end