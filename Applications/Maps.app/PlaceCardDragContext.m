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
    v5 = [v4 mapItem];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end