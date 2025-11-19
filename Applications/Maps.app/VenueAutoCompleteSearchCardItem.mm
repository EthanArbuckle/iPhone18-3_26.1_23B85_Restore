@interface VenueAutoCompleteSearchCardItem
- (VenueAutoCompleteSearchCardItem)initWithVenueIdentifier:(id)a3 searchCategory:(id)a4;
@end

@implementation VenueAutoCompleteSearchCardItem

- (VenueAutoCompleteSearchCardItem)initWithVenueIdentifier:(id)a3 searchCategory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = VenueAutoCompleteSearchCardItem;
  v9 = [(VenueAutoCompleteSearchCardItem *)&v11 init];
  if (v9)
  {
    v9->_venueID = [v7 venueID];
    objc_storeStrong(&v9->_venueIdentifier, a3);
    objc_storeStrong(&v9->_venueSearchCategory, a4);
  }

  return v9;
}

@end