@interface AAUIFinanceKitAdapter
- (BOOL)hasOrders;
@end

@implementation AAUIFinanceKitAdapter

- (BOOL)hasOrders
{
  MEMORY[0x1E69E5928](self);
  sub_1C5467D94();
  MEMORY[0x1E69E5920](self);
  return sub_1C5594AB4() & 1;
}

@end