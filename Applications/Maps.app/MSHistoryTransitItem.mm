@interface MSHistoryTransitItem
- (GEOTransitLineItem)lineItem;
- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item;
@end

@implementation MSHistoryTransitItem

- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item
{
  if (item)
  {
    (*(item + 2))(item, self);
  }
}

- (GEOTransitLineItem)lineItem
{
  v3 = [MSPTransitStorageLineItem alloc];
  transitLineStorage = [(MSHistoryTransitItem *)self transitLineStorage];
  v5 = [v3 initWithData:transitLineStorage];

  return v5;
}

@end