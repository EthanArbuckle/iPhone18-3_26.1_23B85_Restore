@interface MSHistorySearchItem
- (GEOMapRegion)mapRegion;
- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6;
@end

@implementation MSHistorySearchItem

- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6
{
  if (a3)
  {
    (*(a3 + 2))(a3, self);
  }
}

- (GEOMapRegion)mapRegion
{
  v3 = [GEOMapRegion alloc];
  v4 = [(MSHistorySearchItem *)self geoMapRegion];
  v5 = [v3 initWithData:v4];

  return v5;
}

@end