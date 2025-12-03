@interface MKPlaceInfoEmailRowView
- (MKPlaceInfoEmailRowView)initWithFrame:(CGRect)frame;
- (id)_valueString;
@end

@implementation MKPlaceInfoEmailRowView

- (id)_valueString
{
  labeledValue = [(MKPlaceInfoContactRowView *)self labeledValue];
  value = [labeledValue value];

  return value;
}

- (MKPlaceInfoEmailRowView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MKPlaceInfoEmailRowView;
  v3 = [(MKPlaceInfoContactRowView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    valueLabel = [(MKPlaceInfoContactRowView *)v3 valueLabel];
    [valueLabel setLineBreakMode:1];
  }

  return v4;
}

@end