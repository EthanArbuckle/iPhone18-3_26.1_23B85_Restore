@interface GEOVenueFilterItem
- (id)_maps_alphabeticallySortableObject_name;
@end

@implementation GEOVenueFilterItem

- (id)_maps_alphabeticallySortableObject_name
{
  label = [(GEOVenueFilterItem *)self label];
  name = [label name];

  return name;
}

@end