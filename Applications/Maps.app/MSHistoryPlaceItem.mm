@interface MSHistoryPlaceItem
- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item;
@end

@implementation MSHistoryPlaceItem

- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item
{
  if (display)
  {
    (*(display + 2))(display, self);
  }
}

@end