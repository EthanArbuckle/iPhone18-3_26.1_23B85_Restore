@interface TransitDirectionsIconCell
- (TransitDirectionsIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TransitDirectionsIconCell

- (TransitDirectionsIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = TransitDirectionsIconCell;
  v4 = [(TransitDirectionsCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    stepView = [(TransitDirectionsCell *)v4 stepView];
    _mapkit_forceSeparatorFrameToCGRectZero = [(TransitDirectionsIconCell *)v5 _mapkit_forceSeparatorFrameToCGRectZero];
    [(TransitDirectionsIconCell *)v5 set_mapkit_forceSeparatorFrameToCGRectZero:0];
    [(TransitDirectionsCell *)v5 _separatorFrame];
    [stepView _setCalculatedSeparatorHeight:v8];
    [(TransitDirectionsIconCell *)v5 set_mapkit_forceSeparatorFrameToCGRectZero:_mapkit_forceSeparatorFrameToCGRectZero];
  }

  return v5;
}

@end