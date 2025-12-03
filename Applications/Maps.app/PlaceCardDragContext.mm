@interface PlaceCardDragContext
- (MKMapItem)draggedMapItem;
@end

@implementation PlaceCardDragContext

- (MKMapItem)draggedMapItem
{
  v2 = self->_content;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    mapItem = [v4 mapItem];
  }

  else
  {
    mapItem = 0;
  }

  return mapItem;
}

@end