@interface Generate32BitConnectionID
@end

@implementation Generate32BitConnectionID

uint64_t ___Generate32BitConnectionID_block_invoke()
{
  result = arc4random();
  _Generate32BitConnectionID_connectionID = result;
  return result;
}

@end