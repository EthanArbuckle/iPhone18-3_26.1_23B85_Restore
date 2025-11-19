@interface StoreItem
- (id)description;
@end

@implementation StoreItem

- (id)description
{
  v6.receiver = self;
  v6.super_class = StoreItem;
  v3 = [(StoreItem *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@: {bundleID = %@ itemID = %@; itemName = %@; EVID = %@}", v3, self->_bundleID, self->_itemID, self->_itemName, self->_evid];;

  return v4;
}

@end