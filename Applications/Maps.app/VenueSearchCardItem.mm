@interface VenueSearchCardItem
- (VenueSearchCardItem)initWithMapItem:(id)item searchCategory:(id)category;
- (unint64_t)venueID;
@end

@implementation VenueSearchCardItem

- (unint64_t)venueID
{
  _venueInfo = [(MKMapItem *)self->_venueMapItem _venueInfo];
  venueIdentifier = [_venueInfo venueIdentifier];
  venueID = [venueIdentifier venueID];

  return venueID;
}

- (VenueSearchCardItem)initWithMapItem:(id)item searchCategory:(id)category
{
  itemCopy = item;
  categoryCopy = category;
  v12.receiver = self;
  v12.super_class = VenueSearchCardItem;
  v9 = [(VenueSearchCardItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_venueMapItem, item);
    objc_storeStrong(&v10->_venueSearchCategory, category);
  }

  return v10;
}

@end