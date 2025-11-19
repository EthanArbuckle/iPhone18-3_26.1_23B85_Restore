@interface MSHistoryTransitItem
- (GEOTransitLineItem)lineItem;
- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6;
@end

@implementation MSHistoryTransitItem

- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, self);
  }
}

- (GEOTransitLineItem)lineItem
{
  v3 = [MSPTransitStorageLineItem alloc];
  v4 = [(MSHistoryTransitItem *)self transitLineStorage];
  v5 = [v3 initWithData:v4];

  return v5;
}

@end