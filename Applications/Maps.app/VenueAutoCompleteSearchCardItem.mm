@interface VenueAutoCompleteSearchCardItem
- (VenueAutoCompleteSearchCardItem)initWithVenueIdentifier:(id)identifier searchCategory:(id)category;
@end

@implementation VenueAutoCompleteSearchCardItem

- (VenueAutoCompleteSearchCardItem)initWithVenueIdentifier:(id)identifier searchCategory:(id)category
{
  identifierCopy = identifier;
  categoryCopy = category;
  v11.receiver = self;
  v11.super_class = VenueAutoCompleteSearchCardItem;
  v9 = [(VenueAutoCompleteSearchCardItem *)&v11 init];
  if (v9)
  {
    v9->_venueID = [identifierCopy venueID];
    objc_storeStrong(&v9->_venueIdentifier, identifier);
    objc_storeStrong(&v9->_venueSearchCategory, category);
  }

  return v9;
}

@end