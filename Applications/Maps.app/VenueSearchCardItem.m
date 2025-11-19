@interface VenueSearchCardItem
- (VenueSearchCardItem)initWithMapItem:(id)a3 searchCategory:(id)a4;
- (unint64_t)venueID;
@end

@implementation VenueSearchCardItem

- (unint64_t)venueID
{
  v2 = [(MKMapItem *)self->_venueMapItem _venueInfo];
  v3 = [v2 venueIdentifier];
  v4 = [v3 venueID];

  return v4;
}

- (VenueSearchCardItem)initWithMapItem:(id)a3 searchCategory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VenueSearchCardItem;
  v9 = [(VenueSearchCardItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_venueMapItem, a3);
    objc_storeStrong(&v10->_venueSearchCategory, a4);
  }

  return v10;
}

@end