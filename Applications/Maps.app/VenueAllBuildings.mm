@interface VenueAllBuildings
- (VenueAllBuildings)initWithVenueIdentifier:(id)a3;
@end

@implementation VenueAllBuildings

- (VenueAllBuildings)initWithVenueIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VenueAllBuildings;
  v6 = [(VenueAllBuildings *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filterID, a3);
    v8 = objc_alloc_init(VenueAllLabel);
    label = v7->_label;
    v7->_label = v8;

    v7->_describesParentVenue = 1;
  }

  return v7;
}

@end