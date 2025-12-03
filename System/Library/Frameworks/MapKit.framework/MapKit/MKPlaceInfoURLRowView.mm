@interface MKPlaceInfoURLRowView
- (MKPlaceInfoURLRowView)initWithFrame:(CGRect)frame;
- (id)_valueString;
- (id)draggableContent;
@end

@implementation MKPlaceInfoURLRowView

- (id)draggableContent
{
  labeledValue = [(MKPlaceInfoContactRowView *)self labeledValue];
  value = [labeledValue value];

  if (value)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_valueString
{
  labeledValue = [(MKPlaceInfoContactRowView *)self labeledValue];
  value = [labeledValue value];

  v4 = [MEMORY[0x1E696AEC0] _mapkit_shortenedURLStringForFullURLString:value];

  return v4;
}

- (MKPlaceInfoURLRowView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MKPlaceInfoURLRowView;
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