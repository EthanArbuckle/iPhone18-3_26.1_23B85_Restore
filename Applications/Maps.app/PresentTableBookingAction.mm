@interface PresentTableBookingAction
- (PresentTableBookingAction)initWithMapItem:(id)item;
@end

@implementation PresentTableBookingAction

- (PresentTableBookingAction)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PresentTableBookingAction;
  v6 = [(PresentTableBookingAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end