@interface TransitDirectionsBlockTransferCell
- (void)configureWithItem:(id)item;
@end

@implementation TransitDirectionsBlockTransferCell

- (void)configureWithItem:(id)item
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsBlockTransferCell;
  [(TransitDirectionsCell *)&v3 configureWithItem:item];
}

@end