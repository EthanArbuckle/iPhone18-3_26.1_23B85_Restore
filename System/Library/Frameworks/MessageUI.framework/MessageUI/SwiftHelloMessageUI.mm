@interface SwiftHelloMessageUI
- (NSString)world;
- (id)worldWithTruncated:(int64_t)truncated;
@end

@implementation SwiftHelloMessageUI

- (NSString)world
{
  MEMORY[0x1E69E5928](self);
  SwiftHelloMessageUI.world.getter();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1BE94224C();

  return v4;
}

- (id)worldWithTruncated:(int64_t)truncated
{
  MEMORY[0x1E69E5928](self);
  SwiftHelloMessageUI.world(truncated:)(truncated);
  MEMORY[0x1E69E5920](self);
  v6 = sub_1BE94224C();

  return v6;
}

@end