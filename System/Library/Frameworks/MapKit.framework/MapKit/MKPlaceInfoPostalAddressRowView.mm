@interface MKPlaceInfoPostalAddressRowView
- (MKPlaceInfoPostalAddressRowView)initWithFrame:(CGRect)a3;
- (id)_valueString;
@end

@implementation MKPlaceInfoPostalAddressRowView

- (id)_valueString
{
  v2 = [(MKPlaceInfoContactRowView *)self labeledValue];
  v3 = [v2 value];

  return v3;
}

- (MKPlaceInfoPostalAddressRowView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MKPlaceInfoPostalAddressRowView;
  v3 = [(MKPlaceInfoContactRowView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MKPlaceInfoContactRowView *)v3 valueLabel];
    [v5 setLineBreakMode:0];
  }

  return v4;
}

@end