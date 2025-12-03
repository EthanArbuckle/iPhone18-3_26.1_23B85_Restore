@interface MSHistorySearchItem
- (GEOMapRegion)mapRegion;
- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item;
@end

@implementation MSHistorySearchItem

- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item
{
  if (search)
  {
    (*(search + 2))(search, self);
  }
}

- (GEOMapRegion)mapRegion
{
  v3 = [GEOMapRegion alloc];
  geoMapRegion = [(MSHistorySearchItem *)self geoMapRegion];
  v5 = [v3 initWithData:geoMapRegion];

  return v5;
}

@end