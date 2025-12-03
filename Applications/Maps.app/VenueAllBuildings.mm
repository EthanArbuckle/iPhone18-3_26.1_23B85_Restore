@interface VenueAllBuildings
- (VenueAllBuildings)initWithVenueIdentifier:(id)identifier;
@end

@implementation VenueAllBuildings

- (VenueAllBuildings)initWithVenueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = VenueAllBuildings;
  v6 = [(VenueAllBuildings *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filterID, identifier);
    v8 = objc_alloc_init(VenueAllLabel);
    label = v7->_label;
    v7->_label = v8;

    v7->_describesParentVenue = 1;
  }

  return v7;
}

@end