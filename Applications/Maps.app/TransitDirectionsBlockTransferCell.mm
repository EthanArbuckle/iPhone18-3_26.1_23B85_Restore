@interface TransitDirectionsBlockTransferCell
- (void)configureWithItem:(id)a3;
@end

@implementation TransitDirectionsBlockTransferCell

- (void)configureWithItem:(id)a3
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsBlockTransferCell;
  [(TransitDirectionsCell *)&v3 configureWithItem:a3];
}

@end