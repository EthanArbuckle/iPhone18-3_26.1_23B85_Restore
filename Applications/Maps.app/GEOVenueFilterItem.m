@interface GEOVenueFilterItem
- (id)_maps_alphabeticallySortableObject_name;
@end

@implementation GEOVenueFilterItem

- (id)_maps_alphabeticallySortableObject_name
{
  v2 = [(GEOVenueFilterItem *)self label];
  v3 = [v2 name];

  return v3;
}

@end