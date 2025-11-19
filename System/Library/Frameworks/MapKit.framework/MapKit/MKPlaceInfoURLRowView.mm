@interface MKPlaceInfoURLRowView
- (MKPlaceInfoURLRowView)initWithFrame:(CGRect)a3;
- (id)_valueString;
- (id)draggableContent;
@end

@implementation MKPlaceInfoURLRowView

- (id)draggableContent
{
  v2 = [(MKPlaceInfoContactRowView *)self labeledValue];
  v3 = [v2 value];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_valueString
{
  v2 = [(MKPlaceInfoContactRowView *)self labeledValue];
  v3 = [v2 value];

  v4 = [MEMORY[0x1E696AEC0] _mapkit_shortenedURLStringForFullURLString:v3];

  return v4;
}

- (MKPlaceInfoURLRowView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MKPlaceInfoURLRowView;
  v3 = [(MKPlaceInfoContactRowView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MKPlaceInfoContactRowView *)v3 valueLabel];
    [v5 setLineBreakMode:1];
  }

  return v4;
}

@end